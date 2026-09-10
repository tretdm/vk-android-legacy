.class Lcom/vkontakte/android/APIRequest$1$1;
.super Ljava/lang/Object;
.source "APIRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/APIRequest$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/APIRequest$1;

.field private final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/APIRequest$1;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/APIRequest$1$1;->this$1:Lcom/vkontakte/android/APIRequest$1;

    iput-object p2, p0, Lcom/vkontakte/android/APIRequest$1$1;->val$result:Ljava/lang/Object;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest$1$1;->this$1:Lcom/vkontakte/android/APIRequest$1;

    invoke-static {v0}, Lcom/vkontakte/android/APIRequest$1;->access$0(Lcom/vkontakte/android/APIRequest$1;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/APIRequest;->access$2(Lcom/vkontakte/android/APIRequest;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest$1$1;->this$1:Lcom/vkontakte/android/APIRequest$1;

    invoke-static {v0}, Lcom/vkontakte/android/APIRequest$1;->access$0(Lcom/vkontakte/android/APIRequest$1;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/APIRequest;->access$2(Lcom/vkontakte/android/APIRequest;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest$1$1;->this$1:Lcom/vkontakte/android/APIRequest$1;

    invoke-static {v0}, Lcom/vkontakte/android/APIRequest$1;->access$0(Lcom/vkontakte/android/APIRequest$1;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/APIRequest;->access$3(Lcom/vkontakte/android/APIRequest;Landroid/app/ProgressDialog;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/APIRequest$1$1;->val$result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/APIRequest$1$1;->this$1:Lcom/vkontakte/android/APIRequest$1;

    invoke-static {v0}, Lcom/vkontakte/android/APIRequest$1;->access$0(Lcom/vkontakte/android/APIRequest$1;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/APIRequest$1$1;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->invokeCallback(Ljava/lang/Object;)V

    .line 195
    :cond_1
    return-void

    .line 191
    :catch_0
    move-exception v0

    goto :goto_0
.end method
