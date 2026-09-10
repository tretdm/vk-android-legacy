.class Lcom/vkontakte/android/api/VoipInit$1;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "VoipInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/api/VoipInit;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/api/VoipInit;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/api/VoipInit;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/api/VoipInit$1;->this$0:Lcom/vkontakte/android/api/VoipInit;

    .line 15
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vkontakte/android/api/VoipInit$1;->this$0:Lcom/vkontakte/android/api/VoipInit;

    iget-object v0, v0, Lcom/vkontakte/android/api/VoipInit;->callback:Lcom/vkontakte/android/api/VoipInit$Callback;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/vkontakte/android/api/VoipInit$1;->this$0:Lcom/vkontakte/android/api/VoipInit;

    iget-object v0, v0, Lcom/vkontakte/android/api/VoipInit;->callback:Lcom/vkontakte/android/api/VoipInit$Callback;

    invoke-interface {v0, p1, p2}, Lcom/vkontakte/android/api/VoipInit$Callback;->fail(ILjava/lang/String;)V

    .line 23
    :cond_0
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/vkontakte/android/api/VoipInit$1;->this$0:Lcom/vkontakte/android/api/VoipInit;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/api/VoipInit;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    .line 18
    return-void
.end method
