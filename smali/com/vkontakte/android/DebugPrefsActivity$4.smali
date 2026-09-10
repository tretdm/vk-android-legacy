.class Lcom/vkontakte/android/DebugPrefsActivity$4;
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
    .line 84
    iput-object p1, p0, Lcom/vkontakte/android/DebugPrefsActivity$4;->this$0:Lcom/vkontakte/android/DebugPrefsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 87
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "account.testValidation"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vkontakte/android/DebugPrefsActivity$4$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/DebugPrefsActivity$4$1;-><init>(Lcom/vkontakte/android/DebugPrefsActivity$4;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/DebugPrefsActivity$4;->this$0:Lcom/vkontakte/android/DebugPrefsActivity;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/DebugPrefsActivity$4;->this$0:Lcom/vkontakte/android/DebugPrefsActivity;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 99
    const/4 v0, 0x1

    return v0
.end method
