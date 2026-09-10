.class Lcom/vkontakte/android/DebugPrefsActivity$3;
.super Ljava/lang/Object;
.source "DebugPrefsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DebugPrefsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/DebugPrefsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DebugPrefsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/DebugPrefsActivity$3;->this$0:Lcom/vkontakte/android/DebugPrefsActivity;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/DebugPrefsActivity$3;)Lcom/vkontakte/android/DebugPrefsActivity;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/DebugPrefsActivity$3;->this$0:Lcom/vkontakte/android/DebugPrefsActivity;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 52
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 53
    .local v6, "date":Ljava/util/Date;
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/vkontakte/android/DebugPrefsActivity$3;->this$0:Lcom/vkontakte/android/DebugPrefsActivity;

    new-instance v2, Lcom/vkontakte/android/DebugPrefsActivity$3$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/DebugPrefsActivity$3$1;-><init>(Lcom/vkontakte/android/DebugPrefsActivity$3;)V

    .line 66
    invoke-virtual {v6}, Ljava/util/Date;->getYear()I

    move-result v3

    add-int/lit16 v3, v3, 0x76c

    invoke-virtual {v6}, Ljava/util/Date;->getMonth()I

    move-result v4

    invoke-virtual {v6}, Ljava/util/Date;->getDate()I

    move-result v5

    .line 53
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 67
    .local v0, "dpd":Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 68
    const/4 v1, 0x1

    return v1
.end method
