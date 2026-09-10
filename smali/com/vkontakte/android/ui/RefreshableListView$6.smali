.class Lcom/vkontakte/android/ui/RefreshableListView$6;
.super Ljava/lang/Object;
.source "RefreshableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/RefreshableListView;->smoothScrollToPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/RefreshableListView;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/RefreshableListView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/RefreshableListView$6;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    iput p2, p0, Lcom/vkontakte/android/ui/RefreshableListView$6;->val$pos:I

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 702
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView$6;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    iget v1, p0, Lcom/vkontakte/android/ui/RefreshableListView$6;->val$pos:I

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelection(I)V

    .line 703
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView$6;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->access$8(Lcom/vkontakte/android/ui/RefreshableListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/RefreshableListView$6;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 704
    return-void
.end method
