.class Lcom/vkontakte/android/SearchUsersView$SearchUserPhotosAdapter$1;
.super Ljava/lang/Object;
.source "SearchUsersView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SearchUsersView$SearchUserPhotosAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/SearchUsersView$SearchUserPhotosAdapter;

.field private final synthetic val$_view:Landroid/view/View;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SearchUsersView$SearchUserPhotosAdapter;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SearchUsersView$SearchUserPhotosAdapter$1;->this$1:Lcom/vkontakte/android/SearchUsersView$SearchUserPhotosAdapter;

    iput-object p2, p0, Lcom/vkontakte/android/SearchUsersView$SearchUserPhotosAdapter$1;->val$_view:Landroid/view/View;

    iput-object p3, p0, Lcom/vkontakte/android/SearchUsersView$SearchUserPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView$SearchUserPhotosAdapter$1;->val$_view:Landroid/view/View;

    const v1, 0x7f060066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkontakte/android/SearchUsersView$SearchUserPhotosAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 310
    return-void
.end method
