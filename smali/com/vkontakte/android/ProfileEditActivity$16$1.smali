.class Lcom/vkontakte/android/ProfileEditActivity$16$1;
.super Ljava/lang/Object;
.source "ProfileEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfileEditActivity$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ProfileEditActivity$16;

.field private final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfileEditActivity$16;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ProfileEditActivity$16$1;->this$1:Lcom/vkontakte/android/ProfileEditActivity$16;

    iput-object p2, p0, Lcom/vkontakte/android/ProfileEditActivity$16$1;->val$bmp:Landroid/graphics/Bitmap;

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity$16$1;->this$1:Lcom/vkontakte/android/ProfileEditActivity$16;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileEditActivity$16;->access$0(Lcom/vkontakte/android/ProfileEditActivity$16;)Lcom/vkontakte/android/ProfileEditActivity;

    move-result-object v0

    const v1, 0x7f09016a

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity$16$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 415
    return-void
.end method
