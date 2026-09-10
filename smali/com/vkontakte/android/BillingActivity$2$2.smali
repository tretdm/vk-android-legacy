.class Lcom/vkontakte/android/BillingActivity$2$2;
.super Ljava/lang/Object;
.source "BillingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/BillingActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/BillingActivity$2;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/BillingActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/BillingActivity$2$2;->this$1:Lcom/vkontakte/android/BillingActivity$2;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Lcom/vkontakte/android/BillingActivity$2$2;->this$1:Lcom/vkontakte/android/BillingActivity$2;

    invoke-static {v0}, Lcom/vkontakte/android/BillingActivity$2;->access$0(Lcom/vkontakte/android/BillingActivity$2;)Lcom/vkontakte/android/BillingActivity;

    move-result-object v0

    const v1, 0x7f080068

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 125
    iget-object v0, p0, Lcom/vkontakte/android/BillingActivity$2$2;->this$1:Lcom/vkontakte/android/BillingActivity$2;

    invoke-static {v0}, Lcom/vkontakte/android/BillingActivity$2;->access$0(Lcom/vkontakte/android/BillingActivity$2;)Lcom/vkontakte/android/BillingActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/BillingActivity;->setResult(I)V

    .line 126
    iget-object v0, p0, Lcom/vkontakte/android/BillingActivity$2$2;->this$1:Lcom/vkontakte/android/BillingActivity$2;

    invoke-static {v0}, Lcom/vkontakte/android/BillingActivity$2;->access$0(Lcom/vkontakte/android/BillingActivity$2;)Lcom/vkontakte/android/BillingActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/BillingActivity;->finish()V

    .line 127
    return-void
.end method
