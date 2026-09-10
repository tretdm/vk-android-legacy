.class Lcom/vkontakte/android/NotificationsView$3;
.super Ljava/lang/Object;
.source "NotificationsView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NotificationsView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NotificationsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NotificationsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NotificationsView$3;->this$0:Lcom/vkontakte/android/NotificationsView;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NotificationsView$3;)Lcom/vkontakte/android/NotificationsView;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$3;->this$0:Lcom/vkontakte/android/NotificationsView;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "_pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 175
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView$3;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v1}, Lcom/vkontakte/android/NotificationsView;->access$6(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p3, v1

    .line 176
    move v0, p3

    .line 177
    .local v0, "pos":I
    if-ltz v0, :cond_0

    invoke-static {}, Lcom/vkontakte/android/NotificationsView;->access$0()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    move v1, v2

    .line 196
    :goto_0
    return v1

    .line 178
    :cond_1
    invoke-static {}, Lcom/vkontakte/android/NotificationsView;->access$0()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/NotificationEntry;

    iget v1, v1, Lcom/vkontakte/android/api/NotificationEntry;->commentID:I

    if-nez v1, :cond_2

    move v1, v2

    .line 179
    goto :goto_0

    .line 181
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/vkontakte/android/NotificationsView$3;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v2}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 182
    const v2, 0x7f0a0031

    new-instance v3, Lcom/vkontakte/android/NotificationsView$3$1;

    invoke-direct {v3, p0, v0}, Lcom/vkontakte/android/NotificationsView$3$1;-><init>(Lcom/vkontakte/android/NotificationsView$3;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 196
    const/4 v1, 0x1

    goto :goto_0
.end method
