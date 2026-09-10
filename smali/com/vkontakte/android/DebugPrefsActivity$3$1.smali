.class Lcom/vkontakte/android/DebugPrefsActivity$3$1;
.super Ljava/lang/Object;
.source "DebugPrefsActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DebugPrefsActivity$3;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/DebugPrefsActivity$3;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DebugPrefsActivity$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/DebugPrefsActivity$3$1;->this$1:Lcom/vkontakte/android/DebugPrefsActivity$3;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 5
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 57
    new-instance v0, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 58
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0, p4}, Ljava/util/Date;->setDate(I)V

    .line 59
    invoke-virtual {v0, p3}, Ljava/util/Date;->setMonth(I)V

    .line 60
    add-int/lit16 v2, p2, -0x76c

    invoke-virtual {v0, v2}, Ljava/util/Date;->setYear(I)V

    .line 61
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/DebugPrefsActivity$3$1;->this$1:Lcom/vkontakte/android/DebugPrefsActivity$3;

    invoke-static {v2}, Lcom/vkontakte/android/DebugPrefsActivity$3;->access$0(Lcom/vkontakte/android/DebugPrefsActivity$3;)Lcom/vkontakte/android/DebugPrefsActivity;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/BirthdayBroadcastReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "force"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    const-string v2, "date"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 64
    iget-object v2, p0, Lcom/vkontakte/android/DebugPrefsActivity$3$1;->this$1:Lcom/vkontakte/android/DebugPrefsActivity$3;

    invoke-static {v2}, Lcom/vkontakte/android/DebugPrefsActivity$3;->access$0(Lcom/vkontakte/android/DebugPrefsActivity$3;)Lcom/vkontakte/android/DebugPrefsActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/DebugPrefsActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 65
    return-void
.end method
