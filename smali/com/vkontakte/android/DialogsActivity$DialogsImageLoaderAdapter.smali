.class Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/DialogsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogsImageLoaderAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/DialogsActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/DialogsActivity;)V
    .locals 0

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/DialogsActivity;Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter;)V
    .locals 0

    .prologue
    .line 1013
    invoke-direct {p0, p1}, Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter;)Lcom/vkontakte/android/DialogsActivity;
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    return-object v0
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 1022
    const/4 v0, 0x2

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 1028
    if-nez p2, :cond_1

    .line 1029
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-boolean v0, v0, Lcom/vkontakte/android/DialogsActivity;->searching:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    iget-object v0, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 1033
    :goto_1
    return-object v0

    .line 1029
    :cond_0
    sget-object v0, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    goto :goto_0

    .line 1031
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-boolean v0, v0, Lcom/vkontakte/android/DialogsActivity;->searching:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    :goto_2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    iget-object v0, v0, Lcom/vkontakte/android/DialogEntry;->lastMsgPhoto:Ljava/lang/String;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1032
    :catch_0
    move-exception v0

    .line 1033
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-boolean v0, v0, Lcom/vkontakte/android/DialogsActivity;->searching:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    goto :goto_0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter;->this$0:Lcom/vkontakte/android/DialogsActivity;

    new-instance v1, Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter$1;-><init>(Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter;ILandroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/DialogsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1047
    return-void
.end method
