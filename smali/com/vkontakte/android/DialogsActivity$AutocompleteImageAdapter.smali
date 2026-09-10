.class Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/DialogsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutocompleteImageAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/DialogsActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/DialogsActivity;)V
    .locals 0

    .prologue
    .line 1254
    iput-object p1, p0, Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/DialogsActivity;Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter;)V
    .locals 0

    .prologue
    .line 1254
    invoke-direct {p0, p1}, Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter;)Lcom/vkontakte/android/DialogsActivity;
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    return-object v0
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 3
    .param p1, "item"    # I

    .prologue
    const/4 v1, 0x0

    .line 1262
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/DialogsActivity;->access$10(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1263
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/DialogsActivity;->access$10(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    const v2, 0x77359400

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    .line 1264
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1263
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1264
    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/DialogsActivity;->access$10(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/DialogsActivity;->access$10(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/DialogsActivity;->access$6(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/DialogsActivity;->access$6(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    new-instance v1, Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter$1;-><init>(Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/DialogsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1282
    :cond_0
    return-void
.end method
