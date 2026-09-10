.class public Lcom/vkontakte/android/ProfileEditActivity;
.super Lcom/vkontakte/android/VKFragmentActivity;
.source "ProfileEditActivity.java"


# static fields
.field private static final RELATIONS_SAME_GENDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final RELATIONS_WITH_PARTNER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final RELATION_PARTNER_RESULT:I = 0x65


# instance fields
.field private bdateVisSpinner:Landroid/widget/Spinner;

.field private bday:I

.field private bmonth:I

.field private byear:I

.field private cityID:I

.field private citySelector:Landroid/widget/TextView;

.field private content:Landroid/widget/FrameLayout;

.field private countryAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/vkontakte/android/data/database/Country;",
            ">;"
        }
    .end annotation
.end field

.field private countrySpinner:Landroid/widget/Spinner;

.field private currentInfo:Landroid/os/Bundle;

.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field private error:Lcom/vkontakte/android/ui/ErrorView;

.field private form:Landroid/view/View;

.field private gender:I

.field private ignoreCountryChange:Z

.field private progress:Landroid/widget/ProgressBar;

.field private relationAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private relationPartner:Lcom/vkontakte/android/UserProfile;

.field private relationSpinner:Landroid/widget/Spinner;

.field private sendBtn:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 43
    new-array v0, v5, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/ProfileEditActivity;->RELATIONS_WITH_PARTNER:Ljava/util/List;

    .line 44
    new-array v0, v4, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/ProfileEditActivity;->RELATIONS_SAME_GENDER:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/vkontakte/android/VKFragmentActivity;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->ignoreCountryChange:Z

    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/ProfileEditActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->ignoreCountryChange:Z

    return v0
.end method

.method static synthetic access$002(Lcom/vkontakte/android/ProfileEditActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/vkontakte/android/ProfileEditActivity;->ignoreCountryChange:Z

    return p1
.end method

.method static synthetic access$100(Lcom/vkontakte/android/ProfileEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;

    .prologue
    .line 41
    iget v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->cityID:I

    return v0
.end method

.method static synthetic access$1000(Lcom/vkontakte/android/ProfileEditActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileEditActivity;->loadData()V

    return-void
.end method

.method static synthetic access$102(Lcom/vkontakte/android/ProfileEditActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/vkontakte/android/ProfileEditActivity;->cityID:I

    return p1
.end method

.method static synthetic access$1100()Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/vkontakte/android/ProfileEditActivity;->RELATIONS_WITH_PARTNER:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vkontakte/android/ProfileEditActivity;Lcom/vkontakte/android/UserProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;
    .param p1, "x1"    # Lcom/vkontakte/android/UserProfile;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ProfileEditActivity;->setRelationPartner(Lcom/vkontakte/android/UserProfile;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/vkontakte/android/ProfileEditActivity;->RELATIONS_SAME_GENDER:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/vkontakte/android/ProfileEditActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileEditActivity;->cancelNameRequest()V

    return-void
.end method

.method static synthetic access$1600(Lcom/vkontakte/android/ProfileEditActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileEditActivity;->save()V

    return-void
.end method

.method static synthetic access$1702(Lcom/vkontakte/android/ProfileEditActivity;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/vkontakte/android/ProfileEditActivity;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentInfo:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/vkontakte/android/ProfileEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;

    .prologue
    .line 41
    iget v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->bday:I

    return v0
.end method

.method static synthetic access$1902(Lcom/vkontakte/android/ProfileEditActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/vkontakte/android/ProfileEditActivity;->bday:I

    return p1
.end method

.method static synthetic access$200(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->countryAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/vkontakte/android/ProfileEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;

    .prologue
    .line 41
    iget v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->bmonth:I

    return v0
.end method

.method static synthetic access$2002(Lcom/vkontakte/android/ProfileEditActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/vkontakte/android/ProfileEditActivity;->bmonth:I

    return p1
.end method

.method static synthetic access$2100(Lcom/vkontakte/android/ProfileEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;

    .prologue
    .line 41
    iget v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->byear:I

    return v0
.end method

.method static synthetic access$2102(Lcom/vkontakte/android/ProfileEditActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/vkontakte/android/ProfileEditActivity;->byear:I

    return p1
.end method

.method static synthetic access$2200(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->bdateVisSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->countrySpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->form:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/vkontakte/android/ProfileEditActivity;)Lcom/vkontakte/android/UserProfile;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationPartner:Lcom/vkontakte/android/UserProfile;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/vkontakte/android/ProfileEditActivity;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ProfileEditActivity;->showNameInfoDialog(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->citySelector:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/ProfileEditActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileEditActivity;->selectCity()V

    return-void
.end method

.method static synthetic access$500(Lcom/vkontakte/android/ProfileEditActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileEditActivity;->selectBirthDate()V

    return-void
.end method

.method static synthetic access$600(Lcom/vkontakte/android/ProfileEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;

    .prologue
    .line 41
    iget v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->gender:I

    return v0
.end method

.method static synthetic access$602(Lcom/vkontakte/android/ProfileEditActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/vkontakte/android/ProfileEditActivity;->gender:I

    return p1
.end method

.method static synthetic access$700(Lcom/vkontakte/android/ProfileEditActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileEditActivity;->updateRelationOptions()V

    return-void
.end method

.method static synthetic access$800(Lcom/vkontakte/android/ProfileEditActivity;)Lcom/vkontakte/android/ui/ErrorView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->error:Lcom/vkontakte/android/ui/ErrorView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vkontakte/android/ProfileEditActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ProfileEditActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private cancelNameRequest()V
    .locals 3

    .prologue
    .line 382
    new-instance v0, Lcom/vkontakte/android/api/AccountSaveProfileInfo;

    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentInfo:Landroid/os/Bundle;

    const-string v2, "name_req_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/AccountSaveProfileInfo;-><init>(I)V

    new-instance v1, Lcom/vkontakte/android/ProfileEditActivity$15;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfileEditActivity$15;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/AccountSaveProfileInfo;->setCallback(Lcom/vkontakte/android/api/AccountSaveProfileInfo$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 397
    return-void
.end method

.method private loadData()V
    .locals 2

    .prologue
    .line 278
    new-instance v0, Lcom/vkontakte/android/api/AccountGetProfileInfo;

    invoke-direct {v0}, Lcom/vkontakte/android/api/AccountGetProfileInfo;-><init>()V

    new-instance v1, Lcom/vkontakte/android/ProfileEditActivity$14;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ProfileEditActivity$14;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/AccountGetProfileInfo;->setCallback(Lcom/vkontakte/android/api/AccountGetProfileInfo$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 379
    return-void
.end method

.method private save()V
    .locals 13

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 455
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 456
    .local v4, "newInfo":Landroid/os/Bundle;
    const v9, 0x7f080141

    invoke-virtual {p0, v9}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, "firstName":Ljava/lang/String;
    const v9, 0x7f080142

    invoke-virtual {p0, v9}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 458
    .local v3, "lastName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v11, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v11, :cond_1

    .line 459
    :cond_0
    const v9, 0x7f0d02ee

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 555
    :goto_0
    return-void

    .line 462
    :cond_1
    iget-object v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentInfo:Landroid/os/Bundle;

    const-string v11, "first_name"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentInfo:Landroid/os/Bundle;

    const-string v11, "last_name"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 463
    :cond_2
    const-string v9, "first_name"

    invoke-virtual {v4, v9, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v9, "last_name"

    invoke-virtual {v4, v9, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_3
    iget v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->gender:I

    iget-object v11, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentInfo:Landroid/os/Bundle;

    const-string v12, "gender"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    if-eq v9, v11, :cond_4

    .line 467
    const-string v9, "gender"

    iget v11, p0, Lcom/vkontakte/android/ProfileEditActivity;->gender:I

    invoke-virtual {v4, v9, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 469
    :cond_4
    iget-object v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    .line 470
    .local v8, "relation":I
    iget-object v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentInfo:Landroid/os/Bundle;

    const-string v11, "relation"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    if-eq v8, v9, :cond_5

    .line 471
    const-string v9, "relation"

    invoke-virtual {v4, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 473
    :cond_5
    iget-object v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentInfo:Landroid/os/Bundle;

    const-string v11, "relation_partner"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/UserProfile;

    .line 474
    .local v6, "relPartner":Lcom/vkontakte/android/UserProfile;
    if-eqz v6, :cond_c

    iget v5, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 475
    .local v5, "newRelPartnerId":I
    :goto_1
    iget-object v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationPartner:Lcom/vkontakte/android/UserProfile;

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationPartner:Lcom/vkontakte/android/UserProfile;

    iget v7, v9, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 476
    .local v7, "relPartnerId":I
    :goto_2
    if-eq v7, v5, :cond_6

    .line 477
    const-string v9, "relation_partner"

    iget-object v10, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationPartner:Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 479
    :cond_6
    iget v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->bday:I

    iget-object v10, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentInfo:Landroid/os/Bundle;

    const-string v11, "bday"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_7

    iget v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->bmonth:I

    iget-object v10, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentInfo:Landroid/os/Bundle;

    const-string v11, "bmonth"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_7

    iget v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->byear:I

    iget-object v10, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentInfo:Landroid/os/Bundle;

    const-string v11, "byear"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-eq v9, v10, :cond_8

    .line 480
    :cond_7
    const-string v9, "bday"

    iget v10, p0, Lcom/vkontakte/android/ProfileEditActivity;->bday:I

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 481
    const-string v9, "bmonth"

    iget v10, p0, Lcom/vkontakte/android/ProfileEditActivity;->bmonth:I

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 482
    const-string v9, "byear"

    iget v10, p0, Lcom/vkontakte/android/ProfileEditActivity;->byear:I

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 484
    :cond_8
    const/4 v0, -0x1

    .line 485
    .local v0, "bdateVis":I
    iget-object v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->bdateVisSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 496
    :goto_3
    iget-object v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentInfo:Landroid/os/Bundle;

    const-string v10, "bdate_vis"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    if-eq v0, v9, :cond_9

    .line 497
    const-string v9, "bdate_vis"

    invoke-virtual {v4, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 499
    :cond_9
    iget-object v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/data/database/Country;

    iget v1, v9, Lcom/vkontakte/android/data/database/Country;->id:I

    .line 500
    .local v1, "country":I
    iget-object v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentInfo:Landroid/os/Bundle;

    const-string v10, "country_id"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    if-eq v1, v9, :cond_a

    .line 501
    const-string v9, "country_id"

    invoke-virtual {v4, v9, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 503
    :cond_a
    iget v9, p0, Lcom/vkontakte/android/ProfileEditActivity;->cityID:I

    iget-object v10, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentInfo:Landroid/os/Bundle;

    const-string v11, "city_id"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-eq v9, v10, :cond_b

    .line 504
    const-string v9, "city_id"

    iget v10, p0, Lcom/vkontakte/android/ProfileEditActivity;->cityID:I

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 506
    :cond_b
    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v9

    if-nez v9, :cond_e

    .line 507
    const-string v9, "vk"

    const-string v10, "Nothing to save."

    invoke-static {v9, v10}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileEditActivity;->finish()V

    goto/16 :goto_0

    .end local v0    # "bdateVis":I
    .end local v1    # "country":I
    .end local v5    # "newRelPartnerId":I
    .end local v7    # "relPartnerId":I
    :cond_c
    move v5, v10

    .line 474
    goto/16 :goto_1

    .restart local v5    # "newRelPartnerId":I
    :cond_d
    move v7, v10

    .line 475
    goto/16 :goto_2

    .line 487
    .restart local v0    # "bdateVis":I
    .restart local v7    # "relPartnerId":I
    :pswitch_0
    const/4 v0, 0x1

    .line 488
    goto :goto_3

    .line 490
    :pswitch_1
    const/4 v0, 0x2

    .line 491
    goto :goto_3

    .line 493
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_3

    .line 511
    .restart local v1    # "country":I
    :cond_e
    new-instance v9, Lcom/vkontakte/android/api/AccountSaveProfileInfo;

    invoke-direct {v9, v4}, Lcom/vkontakte/android/api/AccountSaveProfileInfo;-><init>(Landroid/os/Bundle;)V

    new-instance v10, Lcom/vkontakte/android/ProfileEditActivity$19;

    invoke-direct {v10, p0, v4}, Lcom/vkontakte/android/ProfileEditActivity$19;-><init>(Lcom/vkontakte/android/ProfileEditActivity;Landroid/os/Bundle;)V

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/api/AccountSaveProfileInfo;->setCallback(Lcom/vkontakte/android/api/AccountSaveProfileInfo$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 485
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private selectBirthDate()V
    .locals 7

    .prologue
    const/16 v4, 0x76c

    const/4 v1, 0x1

    .line 423
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_3

    .line 424
    new-instance v0, Landroid/app/DatePickerDialog;

    new-instance v2, Lcom/vkontakte/android/ProfileEditActivity$17;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ProfileEditActivity$17;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    iget v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->byear:I

    if-le v3, v4, :cond_0

    iget v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->byear:I

    :goto_0
    iget v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->bmonth:I

    if-lez v4, :cond_1

    iget v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->bmonth:I

    add-int/lit8 v4, v4, -0x1

    :goto_1
    iget v5, p0, Lcom/vkontakte/android/ProfileEditActivity;->bday:I

    if-lez v5, :cond_2

    iget v5, p0, Lcom/vkontakte/android/ProfileEditActivity;->bday:I

    :goto_2
    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 435
    .local v0, "dpd":Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 452
    .end local v0    # "dpd":Landroid/app/DatePickerDialog;
    :goto_3
    return-void

    .line 424
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, -0xe

    goto :goto_0

    :cond_1
    move v4, v1

    goto :goto_1

    :cond_2
    move v5, v1

    goto :goto_2

    .line 437
    :cond_3
    new-instance v5, Lcom/vkontakte/android/ProfileEditActivity$18;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/ProfileEditActivity$18;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    iget v2, p0, Lcom/vkontakte/android/ProfileEditActivity;->byear:I

    if-le v2, v4, :cond_4

    iget v2, p0, Lcom/vkontakte/android/ProfileEditActivity;->byear:I

    :goto_4
    iget v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->bmonth:I

    if-lez v3, :cond_5

    iget v3, p0, Lcom/vkontakte/android/ProfileEditActivity;->bmonth:I

    add-int/lit8 v3, v3, -0x1

    :goto_5
    iget v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->bday:I

    if-lez v4, :cond_6

    iget v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->bday:I

    :goto_6
    invoke-static {v5, v2, v3, v4}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->newInstance(Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog$OnDateSetListener;III)Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;

    move-result-object v6

    .line 448
    .local v6, "dlg":Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;
    const/16 v2, 0x771

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0xe

    invoke-virtual {v6, v2, v1}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->setYearRange(II)V

    .line 449
    const v1, 0x7f0d00b3

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ProfileEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->setDoneButtonText(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileEditActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "_datepicker_"

    invoke-virtual {v6, v1, v2}, Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_3

    .line 437
    .end local v6    # "dlg":Lcom/fourmob/datetimepicker/date/CalendarDatePickerDialog;
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, -0xe

    goto :goto_4

    :cond_5
    move v3, v1

    goto :goto_5

    :cond_6
    move v4, v1

    goto :goto_6
.end method

.method private selectCity()V
    .locals 4

    .prologue
    .line 228
    new-instance v1, Lcom/vkontakte/android/fragments/CitySelectFragment;

    invoke-direct {v1}, Lcom/vkontakte/android/fragments/CitySelectFragment;-><init>()V

    .line 229
    .local v1, "fragment":Lcom/vkontakte/android/fragments/CitySelectFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 230
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "hint"

    const v3, 0x7f0d00b9

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ProfileEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v3, "country"

    iget-object v2, p0, Lcom/vkontakte/android/ProfileEditActivity;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/data/database/Country;

    iget v2, v2, Lcom/vkontakte/android/data/database/Country;->id:I

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    const-string v3, "show_none"

    iget v2, p0, Lcom/vkontakte/android/ProfileEditActivity;->cityID:I

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 233
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/fragments/CitySelectFragment;->setArguments(Landroid/os/Bundle;)V

    .line 234
    new-instance v2, Lcom/vkontakte/android/ProfileEditActivity$13;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ProfileEditActivity$13;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/fragments/CitySelectFragment;->setCallback(Lcom/vkontakte/android/fragments/DatabaseSearchFragment$Callback;)V

    .line 244
    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileEditActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "city"

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/fragments/CitySelectFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 245
    return-void

    .line 232
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setRelationPartner(Lcom/vkontakte/android/UserProfile;)V
    .locals 5
    .param p1, "p"    # Lcom/vkontakte/android/UserProfile;

    .prologue
    const v4, 0x7f08014d

    const v0, 0x7f08014c

    const v3, 0x7f08014b

    const v2, 0x7f0201ec

    .line 400
    iput-object p1, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationPartner:Lcom/vkontakte/android/UserProfile;

    .line 401
    if-eqz p1, :cond_0

    .line 402
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 404
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 405
    new-instance v0, Lcom/vkontakte/android/ProfileEditActivity$16;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ProfileEditActivity$16;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    invoke-static {v0}, Lcom/vkontakte/android/APIController;->runInBg(Ljava/lang/Runnable;)V

    .line 420
    :goto_0
    return-void

    .line 416
    :cond_0
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d00c5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 417
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 418
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showNameInfoDialog(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "finish"    # Z

    .prologue
    .line 558
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d00bc

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d01cd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 563
    .local v0, "dlg":Landroid/app/AlertDialog;
    new-instance v1, Lcom/vkontakte/android/ProfileEditActivity$20;

    invoke-direct {v1, p0, p2}, Lcom/vkontakte/android/ProfileEditActivity$20;-><init>(Lcom/vkontakte/android/ProfileEditActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 572
    return-void
.end method

.method private updateRelationOptions()V
    .locals 3

    .prologue
    .line 270
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 271
    .local v0, "selected":I
    iget v1, p0, Lcom/vkontakte/android/ProfileEditActivity;->gender:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v1, 0x7f07000c

    :goto_0
    const v2, 0x7f03001d

    invoke-static {p0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationAdapter:Landroid/widget/ArrayAdapter;

    .line 272
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationAdapter:Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 273
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 274
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 275
    return-void

    .line 271
    :cond_0
    const v1, 0x7f07000d

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 263
    const/16 v1, 0x65

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 264
    const-string v1, "user"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 265
    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    invoke-direct {p0, v0}, Lcom/vkontakte/android/ProfileEditActivity;->setRelationPartner(Lcom/vkontakte/android/UserProfile;)V

    .line 267
    .end local v0    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const v13, 0x1090009

    const/16 v12, 0x8

    const/4 v11, 0x1

    const/high16 v8, 0x42200000    # 40.0f

    const/4 v10, 0x0

    .line 67
    invoke-super {p0, p1}, Lcom/vkontakte/android/VKFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->content:Landroid/widget/FrameLayout;

    .line 70
    iget-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->content:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/ProfileEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 71
    new-instance v4, Landroid/widget/ProgressBar;

    invoke-direct {v4, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->progress:Landroid/widget/ProgressBar;

    .line 72
    iget-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->content:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/vkontakte/android/ProfileEditActivity;->progress:Landroid/widget/ProgressBar;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    const/16 v9, 0x11

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    const v4, 0x7f030030

    invoke-static {p0, v4, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ui/ErrorView;

    iput-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->error:Lcom/vkontakte/android/ui/ErrorView;

    .line 74
    iget-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->content:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/vkontakte/android/ProfileEditActivity;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 75
    const v4, 0x7f030069

    invoke-static {p0, v4, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->form:Landroid/view/View;

    .line 76
    iget-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->content:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/vkontakte/android/ProfileEditActivity;->form:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 77
    iget-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v4, v12}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 78
    iget-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->form:Landroid/view/View;

    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->content:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ProfileEditActivity;->setContentView(Landroid/view/View;)V

    .line 82
    const v4, 0x7f080150

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/vkontakte/android/ui/Fonts;->getRobotoCondensed(I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 83
    const v4, 0x7f080151

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x3

    invoke-static {v5}, Lcom/vkontakte/android/ui/Fonts;->getRobotoCondensed(I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 85
    const v4, 0x7f080147

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->bdateVisSpinner:Landroid/widget/Spinner;

    .line 86
    const v4, 0x7f07000b

    const v5, 0x7f03001d

    invoke-static {p0, v4, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 87
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v13}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 88
    iget-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->bdateVisSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 90
    const v4, 0x7f080148

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationSpinner:Landroid/widget/Spinner;

    .line 92
    const v4, 0x7f08014e

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->countrySpinner:Landroid/widget/Spinner;

    .line 93
    new-instance v4, Lcom/vkontakte/android/ProfileEditActivity$1;

    const v5, 0x7f03001d

    invoke-direct {v4, p0, p0, v5}, Lcom/vkontakte/android/ProfileEditActivity$1;-><init>(Lcom/vkontakte/android/ProfileEditActivity;Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->countryAdapter:Landroid/widget/ArrayAdapter;

    .line 102
    iget-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->countryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v13}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 104
    invoke-static {v11, v11, v10}, Lcom/vkontakte/android/data/database/Country;->getCountries(ZZLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 105
    .local v2, "cc":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/data/database/Country;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/data/database/Country;

    .local v1, "c":Lcom/vkontakte/android/data/database/Country;
    iget-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->countryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 106
    .end local v1    # "c":Lcom/vkontakte/android/data/database/Country;
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->countrySpinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/vkontakte/android/ProfileEditActivity;->countryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 107
    iget-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->countrySpinner:Landroid/widget/Spinner;

    new-instance v5, Lcom/vkontakte/android/ProfileEditActivity$2;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/ProfileEditActivity$2;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 128
    const v4, 0x7f08014f

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->citySelector:Landroid/widget/TextView;

    .line 129
    iget-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->citySelector:Landroid/widget/TextView;

    new-instance v5, Lcom/vkontakte/android/ProfileEditActivity$3;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/ProfileEditActivity$3;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v4, 0x7f080146

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/ProfileEditActivity$4;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/ProfileEditActivity$4;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const v4, 0x7f080143

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/ProfileEditActivity$5;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/ProfileEditActivity$5;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v4, 0x7f080145

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/ProfileEditActivity$6;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/ProfileEditActivity$6;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->error:Lcom/vkontakte/android/ui/ErrorView;

    new-instance v5, Lcom/vkontakte/android/ProfileEditActivity$7;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/ProfileEditActivity$7;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->relationSpinner:Landroid/widget/Spinner;

    new-instance v5, Lcom/vkontakte/android/ProfileEditActivity$8;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/ProfileEditActivity$8;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 185
    const v4, 0x7f08014d

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/ProfileEditActivity$9;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/ProfileEditActivity$9;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const v4, 0x7f08014a

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/ProfileEditActivity$10;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/ProfileEditActivity$10;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    const v4, 0x7f080152

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/ProfileEditActivity$11;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/ProfileEditActivity$11;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    const/high16 v4, 0x7f030000

    invoke-static {p0, v4, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->sendBtn:Landroid/view/View;

    .line 216
    iget-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->sendBtn:Landroid/view/View;

    const v5, 0x7f080022

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0d0275

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 217
    iget-object v4, p0, Lcom/vkontakte/android/ProfileEditActivity;->sendBtn:Landroid/view/View;

    new-instance v5, Lcom/vkontakte/android/ProfileEditActivity$12;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/ProfileEditActivity$12;-><init>(Lcom/vkontakte/android/ProfileEditActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    invoke-direct {p0}, Lcom/vkontakte/android/ProfileEditActivity;->loadData()V

    .line 225
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 248
    const v1, 0x7f0d0275

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 249
    .local v0, "item":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/vkontakte/android/ProfileEditActivity;->sendBtn:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 250
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 251
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Lcom/vkontakte/android/VKFragmentActivity;->onDestroy()V

    .line 256
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ProfileEditActivity;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 260
    :cond_0
    return-void
.end method
