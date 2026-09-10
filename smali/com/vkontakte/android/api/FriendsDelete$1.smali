.class Lcom/vkontakte/android/api/FriendsDelete$1;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "FriendsDelete.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/api/FriendsDelete;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/api/FriendsDelete;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/api/FriendsDelete;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/api/FriendsDelete$1;->this$0:Lcom/vkontakte/android/api/FriendsDelete;

    .line 18
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vkontakte/android/api/FriendsDelete$1;->this$0:Lcom/vkontakte/android/api/FriendsDelete;

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendsDelete;->callback:Lcom/vkontakte/android/api/FriendsDelete$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/api/FriendsDelete$1;->this$0:Lcom/vkontakte/android/api/FriendsDelete;

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendsDelete;->callback:Lcom/vkontakte/android/api/FriendsDelete$Callback;

    invoke-interface {v0, p1, p2}, Lcom/vkontakte/android/api/FriendsDelete$Callback;->fail(ILjava/lang/String;)V

    .line 24
    :cond_0
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vkontakte/android/api/FriendsDelete$1;->this$0:Lcom/vkontakte/android/api/FriendsDelete;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/api/FriendsDelete;->parse(Lorg/json/JSONObject;)V

    .line 21
    return-void
.end method
