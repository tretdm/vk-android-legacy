.class Lcom/vkontakte/android/APIRequest$1;
.super Ljava/lang/Object;
.source "APIRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/APIRequest;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/APIRequest;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/vkontakte/android/APIRequest$1;->this$0:Lcom/vkontakte/android/APIRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest$1;->this$0:Lcom/vkontakte/android/APIRequest;

    iget-object v0, v0, Lcom/vkontakte/android/APIRequest;->httppost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    goto :goto_0
.end method
