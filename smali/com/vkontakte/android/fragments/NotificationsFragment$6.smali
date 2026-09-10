.class Lcom/vkontakte/android/fragments/NotificationsFragment$6;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/NotificationsFragment;->showFilter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

.field final synthetic val$vals:[Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/NotificationsFragment;[Z)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$6;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$6;->val$vals:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 211
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$6;->val$vals:[Z

    aput-boolean p3, v0, p2

    .line 212
    return-void
.end method
