.class Lcom/vkontakte/android/PhotoViewerFragment$2;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field panelVisible:Z

.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerFragment;

.field private final synthetic val$gradientView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerFragment;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerFragment$2;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    iput-object p2, p0, Lcom/vkontakte/android/PhotoViewerFragment$2;->val$gradientView:Landroid/view/View;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoViewerFragment$2;->panelVisible:Z

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PhotoViewerFragment$2;)Lcom/vkontakte/android/PhotoViewerFragment;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment$2;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    return-object v0
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 7
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 171
    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment$2;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoViewerFragment;->access$5(Lcom/vkontakte/android/PhotoViewerFragment;)I

    move-result v5

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment$2;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/PhotoViewerActivity;

    iget v4, v4, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    if-eq v5, v4, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    if-nez p2, :cond_5

    .line 173
    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment$2;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoViewerFragment;->access$6(Lcom/vkontakte/android/PhotoViewerFragment;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0600da

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ZoomableImageView;

    .line 174
    .local v1, "iv":Lcom/vkontakte/android/ZoomableImageView;
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    neg-int v4, v4

    iget-object v5, p0, Lcom/vkontakte/android/PhotoViewerFragment$2;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v5}, Lcom/vkontakte/android/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoCommentsListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getRefreshOffset()F

    move-result v5

    float-to-int v5, v5

    sub-int v2, v4, v5

    .line 176
    .local v2, "top":I
    if-lez v2, :cond_7

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v1, Lcom/vkontakte/android/ZoomableImageView;->lockVerticalMovement:Z

    .line 177
    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment$2;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v5, v4, Lcom/vkontakte/android/PhotoViewerActivity;->commentBar:Landroid/view/View;

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment$2;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v4, v4, Lcom/vkontakte/android/PhotoViewerActivity;->commentBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v5, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 180
    div-int/lit8 v4, v2, 0x2

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/ZoomableImageView;->translateY(I)V

    .line 181
    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment$2;->val$gradientView:Landroid/view/View;

    int-to-float v5, v2

    invoke-virtual {v1}, Lcom/vkontakte/android/ZoomableImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 182
    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment$2;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-boolean v4, v4, Lcom/vkontakte/android/PhotoViewerActivity;->controlsVisible:Z

    if-nez v4, :cond_2

    .line 183
    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment$2;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0600dd

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 184
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 185
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 186
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 187
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x15e

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 188
    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 189
    new-instance v4, Lcom/vkontakte/android/PhotoViewerFragment$2$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/PhotoViewerFragment$2$1;-><init>(Lcom/vkontakte/android/PhotoViewerFragment$2;)V

    .line 191
    const-wide/16 v5, 0x15e

    .line 189
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 194
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    .end local v3    # "v":Landroid/view/View;
    :cond_2
    if-nez v2, :cond_8

    const/4 v4, 0x1

    :goto_2
    iget-boolean v5, p0, Lcom/vkontakte/android/PhotoViewerFragment$2;->panelVisible:Z

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment$2;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-boolean v4, v4, Lcom/vkontakte/android/PhotoViewerActivity;->controlsVisible:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment$2;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoViewerFragment;->access$6(Lcom/vkontakte/android/PhotoViewerFragment;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0600e2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 195
    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment$2;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v5, v4, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    if-nez v2, :cond_9

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment$2;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoViewerFragment;->access$6(Lcom/vkontakte/android/PhotoViewerFragment;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0600e2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v2, :cond_a

    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 197
    if-nez v2, :cond_b

    const/4 v4, 0x1

    :goto_5
    iput-boolean v4, p0, Lcom/vkontakte/android/PhotoViewerFragment$2;->panelVisible:Z

    .line 199
    :cond_3
    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment$2;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoCommentsListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    if-le v2, v4, :cond_4

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment$2;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-boolean v4, v4, Lcom/vkontakte/android/PhotoViewerActivity;->controlsVisible:Z

    if-nez v4, :cond_4

    .line 200
    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment$2;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v4}, Lcom/vkontakte/android/PhotoViewerFragment;->access$7(Lcom/vkontakte/android/PhotoViewerFragment;)V

    .line 202
    :cond_4
    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment$2;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v4, v4, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment$2;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v4, v4, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    .line 203
    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment$2;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v4, v4, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 206
    .end local v1    # "iv":Lcom/vkontakte/android/ZoomableImageView;
    .end local v2    # "top":I
    :cond_5
    if-lez p2, :cond_0

    .line 207
    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment$2;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0600dd

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 208
    .restart local v3    # "v":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_6

    .line 209
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 210
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 211
    .restart local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 212
    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 214
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    :cond_6
    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment$2;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v4, v4, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment$2;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v4, v4, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 215
    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerFragment$2;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v4, v4, Lcom/vkontakte/android/PhotoViewerActivity;->infobar:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 176
    .end local v3    # "v":Landroid/view/View;
    .restart local v1    # "iv":Lcom/vkontakte/android/ZoomableImageView;
    .restart local v2    # "top":I
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 194
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 195
    :cond_9
    const/16 v4, 0x8

    goto/16 :goto_3

    .line 196
    :cond_a
    const/4 v4, 0x4

    goto/16 :goto_4

    .line 197
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_5
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 167
    return-void
.end method
