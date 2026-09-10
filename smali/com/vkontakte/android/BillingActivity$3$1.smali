.class Lcom/vkontakte/android/BillingActivity$3$1;
.super Ljava/lang/Object;
.source "BillingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/BillingActivity$3;->success(ILcom/vkontakte/android/data/StickerPack;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/BillingActivity$3;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/BillingActivity$3;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/vkontakte/android/BillingActivity$3$1;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 176
    iget-object v0, p0, Lcom/vkontakte/android/BillingActivity$3$1;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v0, v0, Lcom/vkontakte/android/BillingActivity$3;->this$0:Lcom/vkontakte/android/BillingActivity;

    iget-object v1, p0, Lcom/vkontakte/android/BillingActivity$3$1;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget v1, v1, Lcom/vkontakte/android/BillingActivity$3;->val$id:I

    iget-object v2, p0, Lcom/vkontakte/android/BillingActivity$3$1;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v2, v2, Lcom/vkontakte/android/BillingActivity$3;->val$orderId:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkontakte/android/BillingActivity$3$1;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v3, v3, Lcom/vkontakte/android/BillingActivity$3;->val$productId:Ljava/lang/String;

    iget-object v4, p0, Lcom/vkontakte/android/BillingActivity$3$1;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v4, v4, Lcom/vkontakte/android/BillingActivity$3;->val$token:Ljava/lang/String;

    iget-object v5, p0, Lcom/vkontakte/android/BillingActivity$3$1;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v5, v5, Lcom/vkontakte/android/BillingActivity$3;->val$progress:Landroid/app/ProgressDialog;

    iget-object v6, p0, Lcom/vkontakte/android/BillingActivity$3$1;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-boolean v6, v6, Lcom/vkontakte/android/BillingActivity$3;->val$finish:Z

    iget-object v7, p0, Lcom/vkontakte/android/BillingActivity$3$1;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iget-object v7, v7, Lcom/vkontakte/android/BillingActivity$3;->val$onDone:Ljava/lang/Runnable;

    invoke-static/range {v0 .. v7}, Lcom/vkontakte/android/BillingActivity;->access$300(Lcom/vkontakte/android/BillingActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;ZLjava/lang/Runnable;)V

    .line 177
    return-void
.end method
