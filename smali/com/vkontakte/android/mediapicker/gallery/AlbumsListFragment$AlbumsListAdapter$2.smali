.class Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$2;
.super Ljava/lang/Object;
.source "AlbumsListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->animateListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$2;->this$1:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$2;)Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$2;->this$1:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 339
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$2;->this$1:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->access$1(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;)Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->access$3(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$2$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$2$1;-><init>(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter$2;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 360
    const-wide/16 v1, 0x154

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 361
    return-void
.end method
