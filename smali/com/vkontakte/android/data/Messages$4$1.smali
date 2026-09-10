.class Lcom/vkontakte/android/data/Messages$4$1;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesGetHistory$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Messages$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/data/Messages$4;

.field private final synthetic val$callback:Lcom/vkontakte/android/data/Messages$GetMessagesCallback;

.field private final synthetic val$peer:I

.field private final synthetic val$result:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/data/Messages$4;Ljava/util/ArrayList;Lcom/vkontakte/android/data/Messages$GetMessagesCallback;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/data/Messages$4$1;->this$1:Lcom/vkontakte/android/data/Messages$4;

    iput-object p2, p0, Lcom/vkontakte/android/data/Messages$4$1;->val$result:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/vkontakte/android/data/Messages$4$1;->val$callback:Lcom/vkontakte/android/data/Messages$GetMessagesCallback;

    iput p4, p0, Lcom/vkontakte/android/data/Messages$4$1;->val$peer:I

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/vkontakte/android/data/Messages$4$1;->val$callback:Lcom/vkontakte/android/data/Messages$GetMessagesCallback;

    invoke-interface {v0, p1, p2}, Lcom/vkontakte/android/data/Messages$GetMessagesCallback;->onError(ILjava/lang/String;)V

    .line 303
    return-void
.end method

.method public success(ILjava/util/Vector;)V
    .locals 2
    .param p1, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p2, "msgs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    iget-object v0, p0, Lcom/vkontakte/android/data/Messages$4$1;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 295
    iget-object v0, p0, Lcom/vkontakte/android/data/Messages$4$1;->val$callback:Lcom/vkontakte/android/data/Messages$GetMessagesCallback;

    iget-object v1, p0, Lcom/vkontakte/android/data/Messages$4$1;->val$result:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/vkontakte/android/data/Messages$GetMessagesCallback;->onMessagesLoaded(Ljava/util/ArrayList;)V

    .line 296
    invoke-static {p2}, Lcom/vkontakte/android/cache/Cache;->addMessages(Ljava/util/List;)V

    .line 298
    return-void
.end method
