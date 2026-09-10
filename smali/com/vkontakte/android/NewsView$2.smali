.class Lcom/vkontakte/android/NewsView$2;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView;->init()V
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
.field final synthetic this$0:Lcom/vkontakte/android/NewsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$2;->this$0:Lcom/vkontakte/android/NewsView;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewsView$2;)Lcom/vkontakte/android/NewsView;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$2;->this$0:Lcom/vkontakte/android/NewsView;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
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
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 135
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$2;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v4}, Lcom/vkontakte/android/NewsView;->access$4(Lcom/vkontakte/android/NewsView;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/NewsView$2;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v4}, Lcom/vkontakte/android/NewsView;->access$5(Lcom/vkontakte/android/NewsView;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/NewsView$2;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v4}, Lcom/vkontakte/android/NewsView;->access$6(Lcom/vkontakte/android/NewsView;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v2

    .line 138
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/vkontakte/android/NewsView$2;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v4, v4, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    iget-object v5, p0, Lcom/vkontakte/android/NewsView$2;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v5, v5, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v5, p3, v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 139
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_0

    .line 140
    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 141
    .local v1, "sid":I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/vkontakte/android/NewsView$2;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v4}, Lcom/vkontakte/android/NewsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 142
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/vkontakte/android/NewsView$2;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v6}, Lcom/vkontakte/android/NewsView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0901f4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    new-instance v5, Lcom/vkontakte/android/NewsView$2$1;

    invoke-direct {v5, p0, v1}, Lcom/vkontakte/android/NewsView$2$1;-><init>(Lcom/vkontakte/android/NewsView$2;I)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 168
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    .end local v1    # "sid":I
    :goto_1
    move v2, v3

    .line 170
    goto :goto_0

    .line 169
    :catch_0
    move-exception v2

    goto :goto_1
.end method
