.class Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter$1;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1919
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->access$2200(Lcom/vkontakte/android/fragments/ProfileFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080159

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1922
    return-void
.end method
