.class Lcom/vkontakte/android/fragments/FeedbackFragment$3;
.super Ljava/lang/Object;
.source "FeedbackFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FeedbackFragment;->showFilter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

.field private final synthetic val$vals:[Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FeedbackFragment;[Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$3;->this$0:Lcom/vkontakte/android/fragments/FeedbackFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$3;->val$vals:[Z

    .line 154
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
    .line 157
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FeedbackFragment$3;->val$vals:[Z

    aput-boolean p3, v0, p2

    .line 158
    return-void
.end method
