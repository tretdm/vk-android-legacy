.class Lcom/vkontakte/android/AudioPlayerActivity$11;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field curPage:I

.field lastState:I

.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerActivity;

.field final synthetic val$pager:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity;Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$11;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/AudioPlayerActivity$11;->val$pager:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 9
    .param p1, "state"    # I

    .prologue
    const-wide/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 301
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state changed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$11;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-static {v3, p1}, Lcom/vkontakte/android/AudioPlayerActivity;->access$102(Lcom/vkontakte/android/AudioPlayerActivity;I)I

    .line 303
    iput p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$11;->lastState:I

    .line 304
    if-nez p1, :cond_2

    .line 305
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$11;->val$pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 306
    .local v0, "pos":I
    if-gtz v0, :cond_4

    sget-object v3, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v3}, Lcom/vkontakte/android/AudioPlayerService;->getPlaylistLength()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 308
    .local v1, "realPos":I
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$11;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    iput-boolean v2, v3, Lcom/vkontakte/android/AudioPlayerActivity;->wasTouching:Z

    .line 309
    if-nez v0, :cond_0

    .line 310
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerActivity$11;->val$pager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/vkontakte/android/AudioPlayerActivity$11$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/AudioPlayerActivity$11$1;-><init>(Lcom/vkontakte/android/AudioPlayerActivity$11;)V

    invoke-virtual {v2, v3, v7, v8}, Landroid/support/v4/view/ViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 319
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerActivity$11;->val$pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_1

    .line 320
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerActivity$11;->val$pager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/vkontakte/android/AudioPlayerActivity$11$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/AudioPlayerActivity$11$2;-><init>(Lcom/vkontakte/android/AudioPlayerActivity$11;)V

    invoke-virtual {v2, v3, v7, v8}, Landroid/support/v4/view/ViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 329
    :cond_1
    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getPlaylistPosition()I

    move-result v2

    if-eq v2, v1, :cond_2

    add-int/lit8 v2, v0, -0x1

    if-ne v2, v1, :cond_2

    .line 330
    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/AudioPlayerService;->jumpToTrack(I)V

    .line 332
    .end local v0    # "pos":I
    .end local v1    # "realPos":I
    :cond_2
    if-ne p1, v6, :cond_3

    .line 333
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerActivity$11;->val$pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/AudioPlayerActivity$11;->curPage:I

    .line 334
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerActivity$11;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    iput-boolean v6, v2, Lcom/vkontakte/android/AudioPlayerActivity;->wasTouching:Z

    .line 336
    :cond_3
    return-void

    .line 306
    .restart local v0    # "pos":I
    :cond_4
    sget-object v3, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v3}, Lcom/vkontakte/android/AudioPlayerService;->getPlaylistLength()I

    move-result v3

    if-le v0, v3, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v0, -0x1

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 4
    .param p1, "page"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPx"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 288
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$11;->lastState:I

    if-nez v0, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$11;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    iget-boolean v0, v0, Lcom/vkontakte/android/AudioPlayerActivity;->wasTouching:Z

    if-eqz v0, :cond_0

    .line 290
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$11;->curPage:I

    if-ge p1, v0, :cond_2

    .line 291
    sub-float p2, v3, p2

    .line 293
    :cond_2
    cmpl-float v0, p2, v2

    if-nez v0, :cond_3

    iget v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$11;->curPage:I

    if-eq p1, v0, :cond_3

    iget v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$11;->lastState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 294
    :cond_3
    cmpl-float v0, p2, v2

    if-ltz v0, :cond_0

    .line 295
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    sub-float v1, v3, p2

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->setVolume(F)V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 284
    return-void
.end method
