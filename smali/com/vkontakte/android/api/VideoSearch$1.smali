.class Lcom/vkontakte/android/api/VideoSearch$1;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "VideoSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/api/VideoSearch;-><init>(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/api/VideoSearch;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/api/VideoSearch;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/api/VideoSearch$1;->this$0:Lcom/vkontakte/android/api/VideoSearch;

    .line 20
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoSearch$1;->this$0:Lcom/vkontakte/android/api/VideoSearch;

    iget-object v0, v0, Lcom/vkontakte/android/api/VideoSearch;->callback:Lcom/vkontakte/android/api/VideoSearch$Callback;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoSearch$1;->this$0:Lcom/vkontakte/android/api/VideoSearch;

    iget-object v0, v0, Lcom/vkontakte/android/api/VideoSearch;->callback:Lcom/vkontakte/android/api/VideoSearch$Callback;

    invoke-interface {v0, p1, p2}, Lcom/vkontakte/android/api/VideoSearch$Callback;->fail(ILjava/lang/String;)V

    .line 28
    :cond_0
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vkontakte/android/api/VideoSearch$1;->this$0:Lcom/vkontakte/android/api/VideoSearch;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/api/VideoSearch;->parse(Lorg/json/JSONObject;)V

    .line 23
    return-void
.end method
