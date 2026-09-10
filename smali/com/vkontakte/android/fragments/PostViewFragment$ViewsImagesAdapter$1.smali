.class Lcom/vkontakte/android/fragments/PostViewFragment$ViewsImagesAdapter$1;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment$ViewsImagesAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/PostViewFragment$ViewsImagesAdapter;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$image:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment$ViewsImagesAdapter;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1934
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$ViewsImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$ViewsImagesAdapter;

    iput p2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$ViewsImagesAdapter$1;->val$image:I

    iput-object p3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$ViewsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1936
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$ViewsImagesAdapter$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$ViewsImagesAdapter;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/PostViewFragment$ViewsImagesAdapter;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$2300(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f08013b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/PhotoStripView;

    .line 1937
    .local v0, "lpwrap":Lcom/vkontakte/android/ui/PhotoStripView;
    iget v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$ViewsImagesAdapter$1;->val$image:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$ViewsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/PhotoStripView;->setBitmap(ILandroid/graphics/Bitmap;)V

    .line 1938
    return-void
.end method
