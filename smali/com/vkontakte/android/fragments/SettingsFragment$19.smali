.class Lcom/vkontakte/android/fragments/SettingsFragment$19;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SettingsFragment;->showTimePicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

.field private final synthetic val$canceled:[Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SettingsFragment;[Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SettingsFragment$19;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/SettingsFragment$19;->val$canceled:[Z

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 288
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SettingsFragment$19;->val$canceled:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 289
    return-void
.end method
