.class Lcom/vkontakte/android/ProfileEditActivity$16;
.super Ljava/lang/Object;
.source "ProfileEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfileEditActivity;->setRelationPartner(Lcom/vkontakte/android/UserProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ProfileEditActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfileEditActivity;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/vkontakte/android/ProfileEditActivity$16;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 407
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity$16;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileEditActivity;->access$2600(Lcom/vkontakte/android/ProfileEditActivity;)Lcom/vkontakte/android/UserProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-static {v1}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 408
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity$16;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    new-instance v2, Lcom/vkontakte/android/ProfileEditActivity$16$1;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/ProfileEditActivity$16$1;-><init>(Lcom/vkontakte/android/ProfileEditActivity$16;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ProfileEditActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 413
    return-void
.end method
