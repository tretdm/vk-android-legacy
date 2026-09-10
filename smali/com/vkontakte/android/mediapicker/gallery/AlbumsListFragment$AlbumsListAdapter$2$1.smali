.class Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$2$1;
.super Ljava/lang/Object;
.source "AlbumsListFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$2;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$2;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$2$1;->this$2:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$2$1;->this$2:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$2;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$2;->this$1:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->this$0:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->access$300(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAlpha(F)V

    .line 359
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 351
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$2$1;->this$2:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$2;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$2;->this$1:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->this$0:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->access$300(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAlpha(F)V

    .line 352
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$2$1;->this$2:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$2;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$2;->this$1:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->this$0:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->access$300(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScaleX(F)V

    .line 353
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$2$1;->this$2:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$2;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$2;->this$1:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->this$0:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->access$300(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScaleY(F)V

    .line 354
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 347
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 343
    return-void
.end method
