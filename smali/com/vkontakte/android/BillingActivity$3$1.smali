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

.field private final synthetic val$finish:Z

.field private final synthetic val$id:I

.field private final synthetic val$onDone:Ljava/lang/Runnable;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$productId:Ljava/lang/String;

.field private final synthetic val$progress:Landroid/app/ProgressDialog;

.field private final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/BillingActivity$3;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;ZLjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/BillingActivity$3$1;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    iput p2, p0, Lcom/vkontakte/android/BillingActivity$3$1;->val$id:I

    iput-object p3, p0, Lcom/vkontakte/android/BillingActivity$3$1;->val$orderId:Ljava/lang/String;

    iput-object p4, p0, Lcom/vkontakte/android/BillingActivity$3$1;->val$productId:Ljava/lang/String;

    iput-object p5, p0, Lcom/vkontakte/android/BillingActivity$3$1;->val$token:Ljava/lang/String;

    iput-object p6, p0, Lcom/vkontakte/android/BillingActivity$3$1;->val$progress:Landroid/app/ProgressDialog;

    iput-boolean p7, p0, Lcom/vkontakte/android/BillingActivity$3$1;->val$finish:Z

    iput-object p8, p0, Lcom/vkontakte/android/BillingActivity$3$1;->val$onDone:Ljava/lang/Runnable;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 176
    iget-object v0, p0, Lcom/vkontakte/android/BillingActivity$3$1;->this$1:Lcom/vkontakte/android/BillingActivity$3;

    invoke-static {v0}, Lcom/vkontakte/android/BillingActivity$3;->access$0(Lcom/vkontakte/android/BillingActivity$3;)Lcom/vkontakte/android/BillingActivity;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/BillingActivity$3$1;->val$id:I

    iget-object v2, p0, Lcom/vkontakte/android/BillingActivity$3$1;->val$orderId:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkontakte/android/BillingActivity$3$1;->val$productId:Ljava/lang/String;

    iget-object v4, p0, Lcom/vkontakte/android/BillingActivity$3$1;->val$token:Ljava/lang/String;

    iget-object v5, p0, Lcom/vkontakte/android/BillingActivity$3$1;->val$progress:Landroid/app/ProgressDialog;

    iget-boolean v6, p0, Lcom/vkontakte/android/BillingActivity$3$1;->val$finish:Z

    iget-object v7, p0, Lcom/vkontakte/android/BillingActivity$3$1;->val$onDone:Ljava/lang/Runnable;

    invoke-static/range {v0 .. v7}, Lcom/vkontakte/android/BillingActivity;->access$4(Lcom/vkontakte/android/BillingActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;ZLjava/lang/Runnable;)V

    .line 177
    return-void
.end method
