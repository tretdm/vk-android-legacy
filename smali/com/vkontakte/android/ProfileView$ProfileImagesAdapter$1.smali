.class Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter$1;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter$1;->this$1:Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;

    iput-object p2, p0, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 1852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter$1;->this$1:Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;->access$1(Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter;)Lcom/vkontakte/android/ProfileView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$13(Lcom/vkontakte/android/ProfileView;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090178

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$ProfileImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1855
    return-void
.end method
