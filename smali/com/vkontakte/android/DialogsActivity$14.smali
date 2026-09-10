.class Lcom/vkontakte/android/DialogsActivity$14;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DialogsActivity;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/DialogsActivity;

.field private final synthetic val$u:Lcom/vkontakte/android/DialogEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DialogsActivity;Lcom/vkontakte/android/DialogEntry;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/DialogsActivity$14;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iput-object p2, p0, Lcom/vkontakte/android/DialogsActivity$14;->val$u:Lcom/vkontakte/android/DialogEntry;

    .line 910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 913
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$14;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$14;->val$u:Lcom/vkontakte/android/DialogEntry;

    iget-object v1, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v1, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/DialogsActivity;->access$16(Lcom/vkontakte/android/DialogsActivity;I)V

    .line 914
    return-void
.end method
