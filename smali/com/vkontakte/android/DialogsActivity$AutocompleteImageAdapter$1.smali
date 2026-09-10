.class Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter$1;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$item:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter$1;->this$1:Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter;

    iput p2, p0, Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter$1;->val$item:I

    iput-object p3, p0, Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 1275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1276
    iget-object v2, p0, Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter$1;->this$1:Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter;

    invoke-static {v2}, Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter;->access$1(Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter;)Lcom/vkontakte/android/DialogsActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/DialogsActivity;->access$6(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget v3, p0, Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter$1;->val$item:I

    iget-object v4, p0, Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter$1;->this$1:Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter;

    invoke-static {v4}, Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter;->access$1(Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter;)Lcom/vkontakte/android/DialogsActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/DialogsActivity;->access$6(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1277
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1278
    const v2, 0x7f06006f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1279
    .local v0, "iv":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/widget/ImageView;

    .end local v0    # "iv":Landroid/view/View;
    iget-object v2, p0, Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1281
    :cond_0
    return-void
.end method
