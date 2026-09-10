.class Lcom/vkontakte/android/ChatActivity$4;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/vkontakte/android/ChatActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$4;->this$0:Lcom/vkontakte/android/ChatActivity;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ChatActivity$4;)Lcom/vkontakte/android/ChatActivity;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$4;->this$0:Lcom/vkontakte/android/ChatActivity;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "arg3"    # J
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 314
    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$4;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v1}, Lcom/vkontakte/android/ChatActivity;->access$13(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setHighlightAfterClick(Z)V

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$4;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090124

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 317
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$4;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 318
    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    new-instance v3, Lcom/vkontakte/android/ChatActivity$4$1;

    invoke-direct {v3, p0, p3, v0}, Lcom/vkontakte/android/ChatActivity$4$1;-><init>(Lcom/vkontakte/android/ChatActivity$4;ILjava/util/ArrayList;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 334
    new-instance v2, Lcom/vkontakte/android/ChatActivity$4$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ChatActivity$4$2;-><init>(Lcom/vkontakte/android/ChatActivity$4;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 340
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 341
    const/4 v1, 0x1

    return v1
.end method
