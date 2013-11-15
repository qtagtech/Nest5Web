package com.nest5.Nest5Client

class Message {

    static belongsTo = [company:Company, user: User]

    Company company
    User user
    Date time
    Boolean read
    String message
    int sender

    static mapping = {
        sort time: "desc"
    }
    static Message addLine(company, user,content,sender) {
//        def m = Message.findByCompanyAndUser(company, user)
        /*if (!m)
        {*/
            def m = new Message()
            company?.addToChats(m)
            user?.addToChats(m)
            m.time = new Date()
            m.read = false
            m.message = content
            m.sender = sender


            if(!m.save())
            {
                println m.errors.allErrors
            }


//        }
        return m
    }

    /*static void deleteChat(company, user) {
        def m = Message.findByCompanyAndUser(company, user)
        if (m)
        {
            company?.removeFromChat(m)
            user?.removeFromChat(m)
            m.delete()
        }
    }*/

    static constraints = {
        message type: 'text'
    }
}


