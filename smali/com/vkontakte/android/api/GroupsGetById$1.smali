.class Lcom/vkontakte/android/api/GroupsGetById$1;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "GroupsGetById.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/api/GroupsGetById;-><init>([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/api/GroupsGetById;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/api/GroupsGetById;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/api/GroupsGetById$1;->this$0:Lcom/vkontakte/android/api/GroupsGetById;

    .line 19
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vkontakte/android/api/GroupsGetById$1;->this$0:Lcom/vkontakte/android/api/GroupsGetById;

    iget-object v0, v0, Lcom/vkontakte/android/api/GroupsGetById;->callback:Lcom/vkontakte/android/api/GroupsGetById$Callback;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/vkontakte/android/api/GroupsGetById$1;->this$0:Lcom/vkontakte/android/api/GroupsGetById;

    iget-object v0, v0, Lcom/vkontakte/android/api/GroupsGetById;->callback:Lcom/vkontakte/android/api/GroupsGetById$Callback;

    invoke-interface {v0, p1, p2}, Lcom/vkontakte/android/api/GroupsGetById$Callback;->fail(ILjava/lang/String;)V

    .line 27
    :cond_0
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vkontakte/android/api/GroupsGetById$1;->this$0:Lcom/vkontakte/android/api/GroupsGetById;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/api/GroupsGetById;->parse(Lorg/json/JSONObject;)V

    .line 22
    return-void
.end method
