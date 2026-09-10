.class Lcom/vkontakte/android/PostViewActivity$7;
.super Ljava/lang/Object;
.source "PostViewActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PostViewActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/vkontakte/android/PostViewActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$7;->this$0:Lcom/vkontakte/android/PostViewActivity;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PostViewActivity$7;)Lcom/vkontakte/android/PostViewActivity;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$7;->this$0:Lcom/vkontakte/android/PostViewActivity;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
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
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 290
    if-ne p3, v5, :cond_0

    .line 291
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity$7;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 292
    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$7;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090124

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/vkontakte/android/PostViewActivity$7$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/PostViewActivity$7$1;-><init>(Lcom/vkontakte/android/PostViewActivity$7;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$7;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$13(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p3, v0

    .line 303
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$7;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    if-nez v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$7;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0, p3}, Lcom/vkontakte/android/PostViewActivity;->access$14(Lcom/vkontakte/android/PostViewActivity;I)V

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$7;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    if-eq v0, v5, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$7;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$7;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0, p3}, Lcom/vkontakte/android/PostViewActivity;->access$15(Lcom/vkontakte/android/PostViewActivity;I)V

    .line 307
    :cond_3
    return v5
.end method
