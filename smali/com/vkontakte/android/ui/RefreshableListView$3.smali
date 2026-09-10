.class Lcom/vkontakte/android/ui/RefreshableListView$3;
.super Ljava/lang/Object;
.source "RefreshableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/RefreshableListView;->scrollDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/RefreshableListView;

.field private final synthetic val$_i:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/RefreshableListView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/RefreshableListView$3;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    iput p2, p0, Lcom/vkontakte/android/ui/RefreshableListView$3;->val$_i:I

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 626
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/vkontakte/android/ui/RefreshableListView$3;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/vkontakte/android/ui/RefreshableListView$3;->val$_i:I

    mul-int/lit8 v7, v7, 0x32

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 627
    .local v8, "ev2":Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/vkontakte/android/ui/RefreshableListView$3;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-static {v0, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->access$2(Lcom/vkontakte/android/ui/RefreshableListView;Landroid/view/MotionEvent;)Z

    .line 628
    return-void
.end method
