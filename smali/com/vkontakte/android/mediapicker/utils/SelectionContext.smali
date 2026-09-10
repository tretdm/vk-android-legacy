.class public Lcom/vkontakte/android/mediapicker/utils/SelectionContext;
.super Ljava/lang/Object;
.source "SelectionContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/mediapicker/utils/SelectionContext$SelectionConstants;
    }
.end annotation


# static fields
.field private static completeOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static completeSingleOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static editMode:Z

.field private static isInSelectionMode:Z

.field private static needSquare:Z

.field private static passedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static preventStyling:Z

.field private static scrollDisabled:Z

.field private static selectedImages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/vkontakte/android/mediapicker/entries/ImageEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static selectionLimit:I

.field private static selectionMode:Z

.field private static singleImageShowing:Z

.field private static singleMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    const/4 v0, -0x1

    sput v0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->selectionLimit:I

    .line 30
    sput-boolean v1, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->singleMode:Z

    .line 31
    sput-boolean v1, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->needSquare:Z

    .line 32
    sput-boolean v1, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->preventStyling:Z

    .line 383
    sput-boolean v1, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->isInSelectionMode:Z

    .line 384
    sput-boolean v1, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->selectionMode:Z

    .line 385
    sput-boolean v1, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->scrollDisabled:Z

    .line 386
    sput-boolean v1, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->singleImageShowing:Z

    .line 387
    sput-boolean v1, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->editMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static addImageToSelected(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)Z
    .locals 2
    .param p0, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    const/4 v0, 0x0

    .line 154
    sget-boolean v1, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->singleMode:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->selectedImages:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    if-nez p0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v0

    .line 157
    :cond_1
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->checkRange()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->toggleChecked()V

    .line 160
    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->selectedImages:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 162
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkRange()Z
    .locals 2

    .prologue
    .line 236
    sget v0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->selectionLimit:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getSelectedCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sget v1, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->selectionLimit:I

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static chooseImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)Z
    .locals 6
    .param p0, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 112
    sget-object v5, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->selectedImages:Ljava/util/HashSet;

    if-nez v5, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v3

    .line 115
    :cond_1
    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .line 116
    .local v0, "activity":Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getFooterView()Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    move-result-object v2

    .line 118
    .local v2, "footerView":Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;
    :goto_1
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsChecked()Z

    move-result v5

    if-nez v5, :cond_3

    move v1, v4

    .line 120
    .local v1, "beChecked":Z
    :goto_2
    if-eqz v1, :cond_7

    .line 122
    sget-object v5, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->selectedImages:Ljava/util/HashSet;

    invoke-virtual {v5, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 125
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->checkRange()Z

    move-result v5

    if-nez v5, :cond_4

    .line 127
    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->shakeBadge()V

    goto :goto_0

    .line 116
    .end local v1    # "beChecked":Z
    .end local v2    # "footerView":Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .restart local v2    # "footerView":Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;
    :cond_3
    move v1, v3

    .line 118
    goto :goto_2

    .line 133
    .restart local v1    # "beChecked":Z
    :cond_4
    sget-object v3, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->selectedImages:Ljava/util/HashSet;

    invoke-virtual {v3, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 140
    :goto_3
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->hasBucket()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    .line 142
    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getGalleryContext()Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getGalleryContext()Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->hasAlbumsFragment()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 143
    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getGalleryContext()Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->albumsFragment:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getBucketId()I

    move-result v5

    invoke-virtual {v3, v5, v1}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->updateAlbumSelectedCount(IZ)V

    .line 146
    :cond_5
    if-eqz v2, :cond_6

    .line 147
    sget-object v3, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->selectedImages:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->setBadge(IZ)V

    :cond_6
    move v3, v4

    .line 149
    goto :goto_0

    .line 137
    :cond_7
    sget-object v3, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->selectedImages:Ljava/util/HashSet;

    invoke-virtual {v3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public static clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 100
    sput-object v1, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->selectedImages:Ljava/util/HashSet;

    .line 101
    sput-boolean v2, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->editMode:Z

    .line 102
    sput-object v1, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->passedItems:Ljava/util/ArrayList;

    .line 103
    const/4 v0, -0x1

    sput v0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->selectionLimit:I

    .line 104
    sput-boolean v2, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->singleMode:Z

    .line 105
    sput-object v1, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->completeOptions:Ljava/util/ArrayList;

    .line 106
    sput-object v1, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->completeSingleOptions:Ljava/util/ArrayList;

    .line 107
    sput-boolean v2, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->preventStyling:Z

    .line 108
    return-void
.end method

.method public static enterSelectionMode(Z)Z
    .locals 3
    .param p0, "mode"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 422
    sput-boolean p0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->selectionMode:Z

    .line 423
    sput-boolean v1, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->scrollDisabled:Z

    .line 425
    sget-boolean v2, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->isInSelectionMode:Z

    if-nez v2, :cond_0

    sput-boolean v0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->isInSelectionMode:Z

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getCompleteOptions()[Ljava/lang/CharSequence;
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 202
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getNeedCompleteOption()Z

    move-result v7

    if-nez v7, :cond_1

    .line 203
    const/4 v2, 0x0

    .line 231
    .local v2, "sequences":[Ljava/lang/CharSequence;
    .local v3, "useOptions":Z
    .local v4, "useSingleOptions":Z
    :cond_0
    return-object v2

    .line 205
    .end local v2    # "sequences":[Ljava/lang/CharSequence;
    .end local v3    # "useOptions":Z
    .end local v4    # "useSingleOptions":Z
    :cond_1
    sget-object v7, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->completeOptions:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getSingleMode()Z

    move-result v7

    if-nez v7, :cond_4

    move v3, v5

    .line 206
    .restart local v3    # "useOptions":Z
    :goto_0
    sget-object v7, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->completeSingleOptions:Ljava/util/ArrayList;

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getSingleMode()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getSelectedCount()I

    move-result v7

    if-gt v7, v5, :cond_5

    :cond_2
    sget-object v7, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    if-eqz v7, :cond_5

    sget-object v7, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v7}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getGalleryContext()Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v7

    if-eqz v7, :cond_5

    sget-object v7, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v7}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getGalleryContext()Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v7

    iget-object v7, v7, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    if-eqz v7, :cond_5

    move v4, v5

    .line 208
    .restart local v4    # "useSingleOptions":Z
    :goto_1
    if-eqz v3, :cond_6

    sget-object v5, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->completeOptions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_2
    if-eqz v4, :cond_3

    sget-object v6, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->completeSingleOptions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    :cond_3
    add-int/2addr v5, v6

    new-array v2, v5, [Ljava/lang/CharSequence;

    .line 210
    .restart local v2    # "sequences":[Ljava/lang/CharSequence;
    array-length v5, v2

    if-eqz v5, :cond_0

    .line 213
    const/4 v1, 0x0

    .line 215
    .local v1, "j":I
    if-eqz v3, :cond_7

    .line 217
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    sget-object v5, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->completeOptions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_7

    .line 219
    sget-object v5, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->completeOptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    aput-object v5, v2, v1

    .line 217
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "sequences":[Ljava/lang/CharSequence;
    .end local v3    # "useOptions":Z
    .end local v4    # "useSingleOptions":Z
    :cond_4
    move v3, v6

    .line 205
    goto :goto_0

    .restart local v3    # "useOptions":Z
    :cond_5
    move v4, v6

    .line 206
    goto :goto_1

    .restart local v4    # "useSingleOptions":Z
    :cond_6
    move v5, v6

    .line 208
    goto :goto_2

    .line 223
    .restart local v1    # "j":I
    .restart local v2    # "sequences":[Ljava/lang/CharSequence;
    :cond_7
    if-eqz v4, :cond_0

    .line 225
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    sget-object v5, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->completeSingleOptions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 227
    sget-object v5, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->completeSingleOptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    aput-object v5, v2, v1

    .line 225
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public static getCompleteOptionsSize()I
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->completeOptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getSingleMode()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->completeOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getImageDataFromHolder(Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;)Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .locals 1
    .param p0, "holder"    # Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;

    .prologue
    .line 366
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->image:Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->image:Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->image:Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->image:Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    goto :goto_0
.end method

.method private static getImageDataFromView(Landroid/view/View;)Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 371
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    goto :goto_0
.end method

.method private static getImageHolderByIndex(I)Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 349
    sget-object v1, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getGalleryContext()Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v1

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    if-eqz v1, :cond_0

    .line 351
    sget-object v1, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getGalleryContext()Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v1

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    invoke-virtual {v1, p0}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->getGridViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 353
    .local v0, "view":Landroid/view/View;
    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getImageHolderFromView(Landroid/view/View;)Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;

    move-result-object v1

    .line 356
    .end local v0    # "view":Landroid/view/View;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getImageHolderFromView(Landroid/view/View;)Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 361
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;

    goto :goto_0
.end method

.method public static getIsCheckedFromView(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 376
    invoke-static {p0}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getImageDataFromView(Landroid/view/View;)Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-result-object v0

    .line 378
    .local v0, "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsChecked()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getIsInEditMode()Z
    .locals 1

    .prologue
    .line 417
    sget-boolean v0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->editMode:Z

    return v0
.end method

.method public static getIsInSelectionMode()Z
    .locals 1

    .prologue
    .line 412
    sget-boolean v0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->isInSelectionMode:Z

    return v0
.end method

.method public static getIsSingleImageShowing()Z
    .locals 1

    .prologue
    .line 391
    sget-boolean v0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->singleImageShowing:Z

    return v0
.end method

.method public static getNeedCompleteOption()Z
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->completeOptions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->completeSingleOptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNeedSquare()Z
    .locals 1

    .prologue
    .line 182
    sget-boolean v0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->needSquare:Z

    return v0
.end method

.method public static getPassedItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->passedItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->passedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->passedItems:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPreventStyling()Z
    .locals 1

    .prologue
    .line 192
    sget-boolean v0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->preventStyling:Z

    return v0
.end method

.method public static getScrollEnabled()Z
    .locals 1

    .prologue
    .line 447
    sget-boolean v0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->scrollDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSelectedCount()I
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->selectedImages:Ljava/util/HashSet;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->selectedImages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    goto :goto_0
.end method

.method public static getSelectionLimit()I
    .locals 1

    .prologue
    .line 241
    sget v0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->selectionLimit:I

    return v0
.end method

.method public static getSelectionMode()Z
    .locals 1

    .prologue
    .line 437
    sget-boolean v0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->selectionMode:Z

    return v0
.end method

.method public static getSingleMode()Z
    .locals 1

    .prologue
    .line 177
    sget-boolean v0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->singleMode:Z

    return v0
.end method

.method public static initialize()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->initialize(IZZ)V

    .line 46
    return-void
.end method

.method public static initialize(IZZ)V
    .locals 2
    .param p0, "selectionLimit"    # I
    .param p1, "singleMode"    # Z
    .param p2, "needSquare"    # Z

    .prologue
    const/4 v1, 0x0

    .line 50
    if-eqz p1, :cond_0

    .line 51
    const/4 p0, 0x1

    .line 53
    :cond_0
    sput-boolean v1, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->singleImageShowing:Z

    .line 54
    sput-boolean v1, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->isInSelectionMode:Z

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->selectedImages:Ljava/util/HashSet;

    .line 56
    sput p0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->selectionLimit:I

    .line 57
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->selectionMode:Z

    .line 58
    sput-boolean v1, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->editMode:Z

    .line 59
    sput-boolean p1, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->singleMode:Z

    .line 60
    sput-boolean p2, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->needSquare:Z

    .line 61
    return-void
.end method

.method public static initialize(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/mediapicker/entries/ImageEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    const/4 v1, 0x0

    .line 39
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, v1, v1}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->initialize(IZZ)V

    .line 40
    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->selectedImages:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 41
    return-void
.end method

.method public static leaveSelectionMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 430
    sput-boolean v0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->scrollDisabled:Z

    .line 432
    sget-boolean v1, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->isInSelectionMode:Z

    if-eqz v1, :cond_0

    sput-boolean v0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->isInSelectionMode:Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static performSelection(I)I
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->performSelection(ILjava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public static performSelection(ILjava/lang/Boolean;)I
    .locals 3
    .param p0, "index"    # I
    .param p1, "checked"    # Ljava/lang/Boolean;

    .prologue
    .line 266
    invoke-static {p0}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getImageHolderByIndex(I)Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;

    move-result-object v0

    .line 267
    .local v0, "holder":Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;
    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getImageDataFromHolder(Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;)Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-result-object v1

    .line 269
    .local v1, "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    if-nez p1, :cond_0

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->performSelection(Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->performSelection(Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Z)I

    move-result v2

    goto :goto_0
.end method

.method public static performSelection(Landroid/view/View;)I
    .locals 1
    .param p0, "wrap"    # Landroid/view/View;

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->performSelection(Landroid/view/View;Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public static performSelection(Landroid/view/View;Ljava/lang/Boolean;)I
    .locals 4
    .param p0, "wrap"    # Landroid/view/View;
    .param p1, "checked"    # Ljava/lang/Boolean;

    .prologue
    .line 258
    move-object v2, p0

    check-cast v2, Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .line 259
    .local v1, "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;

    .line 261
    .local v0, "holder":Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;
    if-nez p1, :cond_0

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->performSelection(Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->performSelection(Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Z)I

    move-result v2

    goto :goto_0
.end method

.method public static performSelection(Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)I
    .locals 1
    .param p0, "holder"    # Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;
    .param p1, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    .line 274
    if-eqz p1, :cond_0

    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getGalleryContext()Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getIsSingleImageShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    :cond_0
    const/4 v0, -0x1

    .line 283
    :goto_0
    return v0

    .line 277
    :cond_1
    invoke-static {p1}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->chooseImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 278
    const/4 v0, 0x0

    goto :goto_0

    .line 280
    :cond_2
    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->toggleChecked()V

    .line 281
    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsChecked()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->updateImageViewSelected(Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;Z)Z

    .line 283
    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static performSelection(Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Z)I
    .locals 3
    .param p0, "holder"    # Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;
    .param p1, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .param p2, "check"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 288
    if-nez p1, :cond_1

    .line 312
    :cond_0
    :goto_0
    return v0

    .line 291
    :cond_1
    if-eqz p2, :cond_2

    .line 293
    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsChecked()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->chooseImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->toggleChecked()V

    .line 296
    invoke-static {p0, v1}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->updateImageViewSelected(Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;Z)Z

    move v0, v1

    .line 298
    goto :goto_0

    .line 303
    :cond_2
    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->chooseImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->toggleChecked()V

    .line 306
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->updateImageViewSelected(Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;Z)Z

    .line 308
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static playSoundEffect(Landroid/view/View;IZ)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "result"    # I
    .param p2, "vibrate"    # Z

    .prologue
    const/4 v0, 0x0

    .line 319
    if-eqz p0, :cond_1

    .line 321
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 322
    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 324
    :cond_0
    if-eqz p2, :cond_1

    .line 325
    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 328
    :cond_1
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static retrieveSelectedImages()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/mediapicker/entries/ImageEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    sget-object v4, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->selectedImages:Ljava/util/HashSet;

    if-nez v4, :cond_0

    .line 82
    const/4 v3, 0x0

    .line 95
    .local v0, "i$":Ljava/util/Iterator;
    .local v2, "images":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    :goto_0
    return-object v3

    .line 84
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "images":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    :cond_0
    sget-object v2, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->selectedImages:Ljava/util/HashSet;

    .line 85
    .restart local v2    # "images":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .line 88
    .local v1, "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 90
    .end local v1    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    :cond_1
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 91
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->clear()V

    .line 93
    invoke-static {}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getComparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public static setCompleteOptions(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, "singleOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sput-object p0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->completeOptions:Ljava/util/ArrayList;

    .line 66
    sput-object p1, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->completeSingleOptions:Ljava/util/ArrayList;

    .line 67
    return-void
.end method

.method public static setEditModeEnabled(ZLjava/util/ArrayList;)V
    .locals 0
    .param p0, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, "images":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sput-boolean p0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->editMode:Z

    .line 407
    sput-object p1, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->passedItems:Ljava/util/ArrayList;

    .line 408
    return-void
.end method

.method public static setPreventStyling(Z)V
    .locals 0
    .param p0, "preventStyling"    # Z

    .prologue
    .line 71
    sput-boolean p0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->preventStyling:Z

    .line 72
    return-void
.end method

.method public static setScrollEnabled(Z)V
    .locals 1
    .param p0, "isEnabled"    # Z

    .prologue
    .line 442
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->scrollDisabled:Z

    .line 443
    return-void

    .line 442
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setSingleImageShowing(Z)V
    .locals 0
    .param p0, "showing"    # Z

    .prologue
    .line 396
    sput-boolean p0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->singleImageShowing:Z

    .line 397
    return-void
.end method

.method public static setSingleModeEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 401
    sput-boolean p0, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->singleMode:Z

    .line 402
    return-void
.end method

.method public static updateImageViewSelected(IZ)Z
    .locals 1
    .param p0, "index"    # I
    .param p1, "checked"    # Z

    .prologue
    .line 333
    invoke-static {p0}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getImageHolderByIndex(I)Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->updateImageViewSelected(Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;Z)Z

    move-result v0

    return v0
.end method

.method public static updateImageViewSelected(Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;Z)Z
    .locals 1
    .param p0, "holder"    # Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;
    .param p1, "isChecked"    # Z

    .prologue
    .line 338
    if-eqz p0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->check:Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;

    invoke-static {p1, v0}, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->updateCheck(ZLcom/vkontakte/android/mediapicker/ui/ImageCheckView;)V

    .line 341
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->overlay:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->updateBorder(ZLandroid/view/View;)V

    .line 344
    :cond_0
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
