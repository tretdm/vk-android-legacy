.class Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$2;
.super Ljava/lang/Object;
.source "PostViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$item:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$2;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    iput p2, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$2;->val$item:I

    iput-object p3, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$2;->val$bitmap:Landroid/graphics/Bitmap;

    .line 1061
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1062
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$2;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/PostViewActivity;->access$4(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1067
    return-void

    .line 1062
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1063
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v3, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$2;->val$item:I

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_0

    .line 1064
    const v1, 0x7f060169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
