.class Lcom/vkontakte/android/api/NewsfeedSearch$1;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "NewsfeedSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/api/NewsfeedSearch;-><init>(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/api/NewsfeedSearch;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/api/NewsfeedSearch;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/api/NewsfeedSearch$1;->this$0:Lcom/vkontakte/android/api/NewsfeedSearch;

    .line 26
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkontakte/android/api/NewsfeedSearch$1;->this$0:Lcom/vkontakte/android/api/NewsfeedSearch;

    iget-object v0, v0, Lcom/vkontakte/android/api/NewsfeedSearch;->callback:Lcom/vkontakte/android/api/NewsfeedSearch$Callback;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/vkontakte/android/api/NewsfeedSearch$1;->this$0:Lcom/vkontakte/android/api/NewsfeedSearch;

    iget-object v0, v0, Lcom/vkontakte/android/api/NewsfeedSearch;->callback:Lcom/vkontakte/android/api/NewsfeedSearch$Callback;

    invoke-interface {v0, p1, p2}, Lcom/vkontakte/android/api/NewsfeedSearch$Callback;->fail(ILjava/lang/String;)V

    .line 34
    :cond_0
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/api/NewsfeedSearch$1;->this$0:Lcom/vkontakte/android/api/NewsfeedSearch;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/api/NewsfeedSearch;->parse(Lorg/json/JSONObject;)V

    .line 29
    return-void
.end method
