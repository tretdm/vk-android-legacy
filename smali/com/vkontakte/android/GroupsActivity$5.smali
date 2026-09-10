.class Lcom/vkontakte/android/GroupsActivity$5;
.super Ljava/lang/Object;
.source "GroupsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/vkontakte/android/GroupsActivity$5;->this$0:Lcom/vkontakte/android/GroupsActivity;

    iput-object p2, p0, Lcom/vkontakte/android/GroupsActivity$5;->val$searchEdit:Landroid/widget/EditText;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 178
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$5;->val$searchEdit:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$5;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$12(Lcom/vkontakte/android/GroupsActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$5;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$14(Lcom/vkontakte/android/GroupsActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$5;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$8(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 189
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$5;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$15(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 190
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$5;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$2(Lcom/vkontakte/android/GroupsActivity;)V

    .line 191
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$5;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/GroupsActivity;->unfocusSearchField()V

    .line 192
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$5;->this$0:Lcom/vkontakte/android/GroupsActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/vkontakte/android/GroupsActivity;->access$16(Lcom/vkontakte/android/GroupsActivity;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$5;->this$0:Lcom/vkontakte/android/GroupsActivity;

    iput-boolean v2, v0, Lcom/vkontakte/android/GroupsActivity;->searchMoreAvailable:Z

    .line 194
    return-void
.end method
