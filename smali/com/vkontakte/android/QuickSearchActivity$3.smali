.class Lcom/vkontakte/android/QuickSearchActivity$3;
.super Ljava/lang/Object;
.source "QuickSearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/QuickSearchActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/vkontakte/android/QuickSearchActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/QuickSearchActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/QuickSearchActivity$3;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "vv"    # Landroid/view/View;
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
    .line 145
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_0

    .line 146
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "vkontakte://vk.com/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vkontakte/android/QuickSearchActivity$3;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v4}, Lcom/vkontakte/android/QuickSearchActivity;->access$10(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 147
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/vkontakte/android/QuickSearchActivity$3;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/QuickSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 157
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 148
    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p4, v2

    if-nez v2, :cond_1

    .line 149
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 150
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "q"

    iget-object v2, p0, Lcom/vkontakte/android/QuickSearchActivity$3;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    const v4, 0x7f090183

    invoke-virtual {v2, v4}, Lcom/vkontakte/android/QuickSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v2, "BrowseUsersFragment"

    iget-object v3, p0, Lcom/vkontakte/android/QuickSearchActivity$3;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v2, v0, v3}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_0

    .line 153
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 154
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v2, "id"

    long-to-int v3, p4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    const-string v2, "ProfileFragment"

    iget-object v3, p0, Lcom/vkontakte/android/QuickSearchActivity$3;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v2, v0, v3}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_0
.end method
