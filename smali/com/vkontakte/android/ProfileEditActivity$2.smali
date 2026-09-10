.class Lcom/vkontakte/android/ProfileEditActivity$2;
.super Ljava/lang/Object;
.source "ProfileEditActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfileEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ProfileEditActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfileEditActivity;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/vkontakte/android/ProfileEditActivity$2;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    .line 110
    iget-object v2, p0, Lcom/vkontakte/android/ProfileEditActivity$2;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ProfileEditActivity;->access$000(Lcom/vkontakte/android/ProfileEditActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/vkontakte/android/ProfileEditActivity$2;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v2, v1}, Lcom/vkontakte/android/ProfileEditActivity;->access$002(Lcom/vkontakte/android/ProfileEditActivity;Z)Z

    .line 119
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/ProfileEditActivity$2;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v2, v1}, Lcom/vkontakte/android/ProfileEditActivity;->access$102(Lcom/vkontakte/android/ProfileEditActivity;I)I

    .line 115
    iget-object v2, p0, Lcom/vkontakte/android/ProfileEditActivity$2;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ProfileEditActivity;->access$200(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/data/database/Country;

    .line 116
    .local v0, "c":Lcom/vkontakte/android/data/database/Country;
    iget-object v2, p0, Lcom/vkontakte/android/ProfileEditActivity$2;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ProfileEditActivity;->access$300(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v2, p0, Lcom/vkontakte/android/ProfileEditActivity$2;->this$0:Lcom/vkontakte/android/ProfileEditActivity;

    invoke-static {v2}, Lcom/vkontakte/android/ProfileEditActivity;->access$300(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget v3, v0, Lcom/vkontakte/android/data/database/Country;->id:I

    if-lez v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
