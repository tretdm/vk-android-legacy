.class Lcom/vkontakte/android/api/UsersGet$2;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "UsersGet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/api/UsersGet;-><init>(Ljava/util/Vector;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/api/UsersGet;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/api/UsersGet;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/api/UsersGet$2;->this$0:Lcom/vkontakte/android/api/UsersGet;

    .line 46
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/api/UsersGet$2;->this$0:Lcom/vkontakte/android/api/UsersGet;

    iget-object v0, v0, Lcom/vkontakte/android/api/UsersGet;->callback:Lcom/vkontakte/android/api/UsersGet$Callback;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/api/UsersGet$2;->this$0:Lcom/vkontakte/android/api/UsersGet;

    iget-object v0, v0, Lcom/vkontakte/android/api/UsersGet;->callback:Lcom/vkontakte/android/api/UsersGet$Callback;

    invoke-interface {v0, p1, p2}, Lcom/vkontakte/android/api/UsersGet$Callback;->fail(ILjava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/api/UsersGet$2;->this$0:Lcom/vkontakte/android/api/UsersGet;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/api/UsersGet;->parse(Lorg/json/JSONObject;)V

    .line 49
    return-void
.end method
