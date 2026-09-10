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

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/UploaderService;I)V
    .locals 0

    .prologue
    .line 1077
    iput-object p1, p0, Lcom/vkontakte/android/UploaderService$18;->this$0:Lcom/vkontakte/android/UploaderService;

    iput p2, p0, Lcom/vkontakte/android/UploaderService$18;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1079
    iget-object v2, p0, Lcom/vkontakte/android/UploaderService$18;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-static {v2}, Lcom/vkontakte/android/UploaderService;->access$000(Lcom/vkontakte/android/UploaderService;)Lcom/vkontakte/android/UploaderService$UploadTask;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/UploaderService$18;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-static {v2}, Lcom/vkontakte/android/UploaderService;->access$000(Lcom/vkontakte/android/UploaderService;)Lcom/vkontakte/android/UploaderService$UploadTask;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    iget v3, p0, Lcom/vkontakte/android/UploaderService$18;->val$id:I

    if-ne v2, v3, :cond_0

    .line 1080
    iget-object v2, p0, Lcom/vkontakte/android/UploaderService$18;->this$0:Lcom/vkontakte/android/UploaderService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/vkontakte/android/UploaderService;->access$102(Lcom/vkontakte/android/UploaderService;Z)Z

    .line 1081
    iget-object v2, p0, Lcom/vkontakte/android/UploaderService$18;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-static {v2}, Lcom/vkontakte/android/UploaderService;->access$200(Lcom/vkontakte/android/UploaderService;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1082
    iget-object v2, p0, Lcom/vkontakte/android/UploaderService$18;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-static {v2}, Lcom/vkontakte/android/UploaderService;->access$200(Lcom/vkontakte/android/UploaderService;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 1084
    :cond_0
    invoke-static {}, Lcom/vkontakte/android/UploaderService;->access$300()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 1085
    .local v1, "ut":Lcom/vkontakte/android/UploaderService$UploadTask;
    iget v2, v1, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    iget v3, p0, Lcom/vkontakte/android/UploaderService$18;->val$id:I

    if-ne v2, v3, :cond_1

    .line 1086
    invoke-static {}, Lcom/vkontakte/android/UploaderService;->access$300()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1090
    .end local v1    # "ut":Lcom/vkontakte/android/UploaderService$UploadTask;
    :cond_2
    return-void
.end method
