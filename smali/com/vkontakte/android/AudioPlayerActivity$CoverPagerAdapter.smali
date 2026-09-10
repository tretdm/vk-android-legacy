.class Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "AudioPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/AudioPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity;)V
    .locals 0

    .prologue
    .line 952
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity;Lcom/vkontakte/android/AudioPlayerActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/AudioPlayerActivity;
    .param p2, "x1"    # Lcom/vkontakte/android/AudioPlayerActivity$1;

    .prologue
    .line 952
    invoke-direct {p0, p1}, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 1014
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    add-int/lit8 p2, p2, -0x1

    move-object v0, p3

    .line 1016
    check-cast v0, Landroid/view/View;

    .line 1017
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerActivity;->access$1400(Lcom/vkontakte/android/AudioPlayerActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1019
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 956
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v0, :cond_0

    .line 957
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->getPlaylistLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 959
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 968
    const-string v3, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "instantiate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    if-gtz p2, :cond_1

    sget-object v3, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v3}, Lcom/vkontakte/android/AudioPlayerService;->getPlaylistLength()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 970
    .local v1, "realPos":I
    :goto_0
    add-int/lit8 p2, p2, -0x1

    .line 971
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    const v5, 0x7f030017

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 972
    .local v2, "v":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 973
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/AudioPlayerActivity;->access$1400(Lcom/vkontakte/android/AudioPlayerActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    sget-object v3, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v3, v1}, Lcom/vkontakte/android/AudioPlayerService;->getPlaylistItem(I)Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    .line 975
    .local v0, "file":Lcom/vkontakte/android/AudioFile;
    if-nez v0, :cond_0

    new-instance v0, Lcom/vkontakte/android/AudioFile;

    .end local v0    # "file":Lcom/vkontakte/android/AudioFile;
    invoke-direct {v0}, Lcom/vkontakte/android/AudioFile;-><init>()V

    .restart local v0    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_0
    move-object v3, v2

    .line 976
    check-cast v3, Lcom/vkontakte/android/ui/AlbumScrollView;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/AlbumScrollView;->setEnabled(Z)V

    .line 979
    iget v3, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    iget v5, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    new-instance v6, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1;

    invoke-direct {v6, p0, v2}, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1;-><init>(Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;Landroid/view/View;)V

    invoke-static {v3, v5, v4, v6}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->getCoverImage(IIILcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;)V

    .line 998
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/AudioPlayerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getHeight()I

    move-result v3

    if-nez v3, :cond_3

    .line 999
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$2;

    invoke-direct {v4, p0, v2}, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$2;-><init>(Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1010
    :goto_1
    return-object v2

    .line 969
    .end local v0    # "file":Lcom/vkontakte/android/AudioFile;
    .end local v1    # "realPos":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    sget-object v3, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v3}, Lcom/vkontakte/android/AudioPlayerService;->getPlaylistLength()I

    move-result v3

    if-le p2, v3, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v1, p2, -0x1

    goto :goto_0

    .line 1008
    .restart local v0    # "file":Lcom/vkontakte/android/AudioFile;
    .restart local v1    # "realPos":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_3
    const v3, 0x7f080072

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v5}, Lcom/vkontakte/android/AudioPlayerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getHeight()I

    move-result v5

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 964
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
