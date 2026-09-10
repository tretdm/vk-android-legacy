.class Lcom/vkontakte/android/api/AuthSignup$1;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "AuthSignup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/api/AuthSignup;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/api/AuthSignup;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/api/AuthSignup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/api/AuthSignup$1;->this$0:Lcom/vkontakte/android/api/AuthSignup;

    .line 23
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkontakte/android/api/AuthSignup$1;->this$0:Lcom/vkontakte/android/api/AuthSignup;

    iget-object v0, v0, Lcom/vkontakte/android/api/AuthSignup;->callback:Lcom/vkontakte/android/api/AuthSignup$Callback;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/vkontakte/android/api/AuthSignup$1;->this$0:Lcom/vkontakte/android/api/AuthSignup;

    iget-object v0, v0, Lcom/vkontakte/android/api/AuthSignup;->callback:Lcom/vkontakte/android/api/AuthSignup$Callback;

    invoke-interface {v0, p1, p2}, Lcom/vkontakte/android/api/AuthSignup$Callback;->fail(ILjava/lang/String;)V

    .line 31
    :cond_0
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vkontakte/android/api/AuthSignup$1;->this$0:Lcom/vkontakte/android/api/AuthSignup;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/api/AuthSignup;->parse(Lorg/json/JSONObject;)V

    .line 26
    return-void
.end method
