.class Lcom/vkontakte/android/fragments/DialogsFragment$16;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DialogsFragment;->confirmAndClearHistory(Lcom/vkontakte/android/DialogEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

.field final synthetic val$e:Lcom/vkontakte/android/DialogEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment;Lcom/vkontakte/android/DialogEntry;)V
    .locals 0

    .prologue
    .line 986
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$16;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$16;->val$e:Lcom/vkontakte/android/DialogEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 989
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$16;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$16;->val$e:Lcom/vkontakte/android/DialogEntry;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$2600(Lcom/vkontakte/android/fragments/DialogsFragment;Lcom/vkontakte/android/DialogEntry;)V

    .line 990
    return-void
.end method
