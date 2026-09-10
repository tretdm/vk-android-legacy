.class Lcom/vkontakte/android/NewPostActivity$15;
.super Ljava/lang/Object;
.source "NewPostActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewPostActivity;->showOptions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewPostActivity;

.field private final synthetic val$dlg:Landroid/app/AlertDialog;

.field private final synthetic val$enabled:[Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewPostActivity;Landroid/app/AlertDialog;[Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$15;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iput-object p2, p0, Lcom/vkontakte/android/NewPostActivity$15;->val$dlg:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/vkontakte/android/NewPostActivity$15;->val$enabled:[Z

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 540
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$15;->val$dlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    .line 541
    .local v0, "idx":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$15;->val$enabled:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$15;->val$enabled:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 542
    const/4 v1, 0x1

    .line 544
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
