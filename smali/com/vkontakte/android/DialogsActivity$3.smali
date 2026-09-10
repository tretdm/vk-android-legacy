.class Lcom/vkontakte/android/DialogsActivity$3;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DialogsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/DialogsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DialogsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/DialogsActivity$3;->this$0:Lcom/vkontakte/android/DialogsActivity;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v2, 0x7f06006a

    .line 243
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$3;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-object v0, v0, Lcom/vkontakte/android/DialogsActivity;->searchBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$3;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-object v0, v0, Lcom/vkontakte/android/DialogsActivity;->searchBar:Landroid/view/View;

    const v1, 0x7f060123

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$3;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$3;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-object v0, v0, Lcom/vkontakte/android/DialogsActivity;->searchBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/vkontakte/android/DialogsActivity;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    .line 246
    return-void
.end method
