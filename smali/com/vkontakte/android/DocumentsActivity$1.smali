.class Lcom/vkontakte/android/DocumentsActivity$1;
.super Ljava/lang/Object;
.source "DocumentsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DocumentsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/DocumentsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DocumentsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/DocumentsActivity$1;->this$0:Lcom/vkontakte/android/DocumentsActivity;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/vkontakte/android/DocumentsActivity$1;->this$0:Lcom/vkontakte/android/DocumentsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/DocumentsActivity;->access$1(Lcom/vkontakte/android/DocumentsActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p3, v1

    .line 73
    iget-object v1, p0, Lcom/vkontakte/android/DocumentsActivity$1;->this$0:Lcom/vkontakte/android/DocumentsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/DocumentsActivity;->access$2(Lcom/vkontakte/android/DocumentsActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "document"

    iget-object v1, p0, Lcom/vkontakte/android/DocumentsActivity$1;->this$0:Lcom/vkontakte/android/DocumentsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/DocumentsActivity;->access$0(Lcom/vkontakte/android/DocumentsActivity;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lcom/vkontakte/android/DocumentsActivity$1;->this$0:Lcom/vkontakte/android/DocumentsActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/DocumentsActivity;->setResult(ILandroid/content/Intent;)V

    .line 77
    iget-object v1, p0, Lcom/vkontakte/android/DocumentsActivity$1;->this$0:Lcom/vkontakte/android/DocumentsActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/DocumentsActivity;->finish()V

    .line 81
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/DocumentsActivity$1;->this$0:Lcom/vkontakte/android/DocumentsActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    iget-object v1, p0, Lcom/vkontakte/android/DocumentsActivity$1;->this$0:Lcom/vkontakte/android/DocumentsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/DocumentsActivity;->access$0(Lcom/vkontakte/android/DocumentsActivity;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/Document;

    iget-object v1, v1, Lcom/vkontakte/android/api/Document;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/DocumentsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
