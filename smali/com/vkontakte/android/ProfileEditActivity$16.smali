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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ProfileEditActivity$16;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ProfileEditActivity$16;)Lcom/vkontakte/android/ProfileEditActivity;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity$16;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 411
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity$16;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileEditActivity;->access$32(Lcom/vkontakte/android/ProfileEditActivity;)Lcom/vkontakte/android/UserProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-static {v1}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 412
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity$16;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    new-instance v2, Lcom/vkontakte/android/ProfileEditActivity$16$1;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/ProfileEditActivity$16$1;-><init>(Lcom/vkontakte/android/ProfileEditActivity$16;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ProfileEditActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 417
    return-void
.end method
