.class Lcom/vkontakte/android/fragments/SignupProfileFragment$7$1;
.super Ljava/lang/Object;
.source "SignupProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SignupProfileFragment$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/SignupProfileFragment$7;

.field private final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SignupProfileFragment$7;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/SignupProfileFragment$7;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment$7$1;->val$bmp:Landroid/graphics/Bitmap;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 247
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set thumb "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment$7$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment$7$1;->this$1:Lcom/vkontakte/android/fragments/SignupProfileFragment$7;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SignupProfileFragment$7;->access$0(Lcom/vkontakte/android/fragments/SignupProfileFragment$7;)Lcom/vkontakte/android/fragments/SignupProfileFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->access$0(Lcom/vkontakte/android/fragments/SignupProfileFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment$7$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 249
    return-void
.end method
