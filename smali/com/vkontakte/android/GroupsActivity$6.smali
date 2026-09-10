.class Lcom/vkontakte/android/GroupsActivity$6;
.super Ljava/lang/Object;
.source "GroupsActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/GroupsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/GroupsActivity;

.field private final synthetic val$searchEdit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/GroupsActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/GroupsActivity$6;->this$0:Lcom/vkontakte/android/GroupsActivity;

    iput-object p2, p0, Lcom/vkontakte/android/GroupsActivity$6;->val$searchEdit:Landroid/widget/EditText;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 199
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$6;->val$searchEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return v2

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$6;->this$0:Lcom/vkontakte/android/GroupsActivity;

    iget-object v1, p0, Lcom/vkontakte/android/GroupsActivity$6;->val$searchEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/GroupsActivity;->access$16(Lcom/vkontakte/android/GroupsActivity;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$6;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$17(Lcom/vkontakte/android/GroupsActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$6;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$17(Lcom/vkontakte/android/GroupsActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$6;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$8(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 207
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$6;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$15(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 208
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$6;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$2(Lcom/vkontakte/android/GroupsActivity;)V

    .line 209
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$6;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$18(Lcom/vkontakte/android/GroupsActivity;)V

    .line 221
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$6;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$14(Lcom/vkontakte/android/GroupsActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$6;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/GroupsActivity;->unfocusSearchField()V

    goto :goto_0
.end method
