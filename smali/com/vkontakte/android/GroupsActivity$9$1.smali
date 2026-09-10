.class Lcom/vkontakte/android/GroupsActivity$9$1;
.super Ljava/lang/Object;
.source "GroupsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/GroupsActivity$9;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/GroupsActivity$9;

.field private final synthetic val$g:Lcom/vkontakte/android/api/GroupInvitation;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/GroupsActivity$9;Lcom/vkontakte/android/api/GroupInvitation;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/GroupsActivity$9$1;->this$1:Lcom/vkontakte/android/GroupsActivity$9;

    iput-object p2, p0, Lcom/vkontakte/android/GroupsActivity$9$1;->val$g:Lcom/vkontakte/android/api/GroupInvitation;

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 384
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$9$1;->this$1:Lcom/vkontakte/android/GroupsActivity$9;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity$9;->access$0(Lcom/vkontakte/android/GroupsActivity$9;)Lcom/vkontakte/android/GroupsActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/GroupsActivity$9$1;->val$g:Lcom/vkontakte/android/api/GroupInvitation;

    invoke-static {v0, v1}, Lcom/vkontakte/android/GroupsActivity;->access$19(Lcom/vkontakte/android/GroupsActivity;Lcom/vkontakte/android/api/GroupInvitation;)V

    .line 385
    return-void
.end method
