.class Lcom/vkontakte/android/SearchUsersView$SearchUserPhotosAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "SearchUsersView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/SearchUsersView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchUserPhotosAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SearchUsersView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/SearchUsersView;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/vkontakte/android/SearchUsersView$SearchUserPhotosAdapter;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/SearchUsersView;Lcom/vkontakte/android/SearchUsersView$SearchUserPhotosAdapter;)V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/vkontakte/android/SearchUsersView$SearchUserPhotosAdapter;-><init>(Lcom/vkontakte/android/SearchUsersView;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 293
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView$SearchUserPhotosAdapter;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v0}, Lcom/vkontakte/android/SearchUsersView;->access$0(Lcom/vkontakte/android/SearchUsersView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/vkontakte/android/SearchUsersView$SearchUserPhotosAdapter;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v0}, Lcom/vkontakte/android/SearchUsersView;->access$0(Lcom/vkontakte/android/SearchUsersView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 303
    iget-object v2, p0, Lcom/vkontakte/android/SearchUsersView$SearchUserPhotosAdapter;->this$0:Lcom/vkontakte/android/SearchUsersView;

    invoke-static {v2}, Lcom/vkontakte/android/SearchUsersView;->access$1(Lcom/vkontakte/android/SearchUsersView;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 312
    :goto_0
    return-void

    .line 303
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 304
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 305
    move-object v0, v1

    .line 306
    .local v0, "_view":Landroid/view/View;
    new-instance v2, Lcom/vkontakte/android/SearchUsersView$SearchUserPhotosAdapter$1;

    invoke-direct {v2, p0, v0, p3}, Lcom/vkontakte/android/SearchUsersView$SearchUserPhotosAdapter$1;-><init>(Lcom/vkontakte/android/SearchUsersView$SearchUserPhotosAdapter;Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
