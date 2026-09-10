.class Lcom/vkontakte/android/UploaderService$18;
.super Ljava/lang/Object;
.source "UploaderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/UploaderService;->cancel(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/UploaderService;

.field private final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/UploaderService;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/UploaderService$18;->this$0:Lcom/vkontakte/android/UploaderService;

    iput p2, p0, Lcom/vkontakte/android/UploaderService$18;->val$id:I

    .line 1076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1078
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService$18;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-static {v1}, Lcom/vkontakte/android/UploaderService;->access$1(Lcom/vkontakte/android/UploaderService;)Lcom/vkontakte/android/UploaderService$UploadTask;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/UploaderService$18;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-static {v1}, Lcom/vkontakte/android/UploaderService;->access$1(Lcom/vkontakte/android/UploaderService;)Lcom/vkontakte/android/UploaderService$UploadTask;

    move-result-object v1

    iget v1, v1, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    iget v2, p0, Lcom/vkontakte/android/UploaderService$18;->val$id:I

    if-ne v1, v2, :cond_0

    .line 1079
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService$18;->this$0:Lcom/vkontakte/android/UploaderService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/vkontakte/android/UploaderService;->access$3(Lcom/vkontakte/android/UploaderService;Z)V

    .line 1080
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService$18;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-static {v1}, Lcom/vkontakte/android/UploaderService;->access$4(Lcom/vkontakte/android/UploaderService;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1081
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService$18;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-static {v1}, Lcom/vkontakte/android/UploaderService;->access$4(Lcom/vkontakte/android/UploaderService;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 1083
    :cond_0
    invoke-static {}, Lcom/vkontakte/android/UploaderService;->access$5()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1089
    :goto_0
    return-void

    .line 1083
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 1084
    .local v0, "ut":Lcom/vkontakte/android/UploaderService$UploadTask;
    iget v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    iget v3, p0, Lcom/vkontakte/android/UploaderService$18;->val$id:I

    if-ne v2, v3, :cond_1

    .line 1085
    invoke-static {}, Lcom/vkontakte/android/UploaderService;->access$5()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
