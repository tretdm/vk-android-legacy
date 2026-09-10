.class Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter$1;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$item:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter$1;->this$1:Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter;

    iput p2, p0, Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter$1;->val$item:I

    iput-object p3, p0, Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 972
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter$1;->this$1:Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter;->access$1(Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter;)Lcom/vkontakte/android/DialogsActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/vkontakte/android/DialogsActivity;->views:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 978
    :goto_0
    return-void

    .line 972
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 973
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v3, p0, Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter$1;->val$item:I

    if-ne v1, v3, :cond_0

    .line 974
    const v1, 0x7f06005d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
