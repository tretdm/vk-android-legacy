.class Lcom/vkontakte/android/CaptchaActivity$6;
.super Ljava/lang/Object;
.source "CaptchaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CaptchaActivity;->displayImage(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/CaptchaActivity;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CaptchaActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/CaptchaActivity$6;->this$0:Lcom/vkontakte/android/CaptchaActivity;

    iput-object p2, p0, Lcom/vkontakte/android/CaptchaActivity$6;->val$bitmap:Landroid/graphics/Bitmap;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/vkontakte/android/CaptchaActivity$6;->this$0:Lcom/vkontakte/android/CaptchaActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CaptchaActivity;->access$5(Lcom/vkontakte/android/CaptchaActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/CaptchaActivity$6;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 119
    iget-object v0, p0, Lcom/vkontakte/android/CaptchaActivity$6;->this$0:Lcom/vkontakte/android/CaptchaActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CaptchaActivity;->access$6(Lcom/vkontakte/android/CaptchaActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 120
    return-void
.end method
